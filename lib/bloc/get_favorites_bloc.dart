import 'package:jaz_app/models/graphql/graphql_api.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:graphql/client.dart';

class GetFavoritesBloc extends QueryBloc<FavoritesInfo$Query> {
  GetFavoritesBloc({required GraphQLClient client, WatchQueryOptions? options})
      : super(
    client: client,
    options: options ??
        WatchQueryOptions(document: FAVORITES_INFO_QUERY_DOCUMENT),
  );

  @override
  FavoritesInfo$Query parseData(Map<String, dynamic>? data) {
    return FavoritesInfo$Query.fromJson(data ?? {});
  }
}