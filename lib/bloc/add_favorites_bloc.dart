import 'package:jaz_app/models/graphql/graphql_api.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:graphql/client.dart';

class AddToFavoritesBloc extends QueryBloc<AddToFavorites$Mutation> {
  AddToFavoritesBloc({required GraphQLClient client, WatchQueryOptions? options})
      : super(
    client: client,
    options: options ??
        WatchQueryOptions(document: ADD_TO_FAVORITES_MUTATION_DOCUMENT),
  );

  @override
  AddToFavorites$Mutation parseData(Map<String, dynamic>? data) {
    return AddToFavorites$Mutation.fromJson(data ?? {});
  }
}