import 'package:jaz_app/models/graphql/graphql_api.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:graphql/client.dart';

class DestinationsBloc extends QueryBloc<Destinations$Query> {
  DestinationsBloc({required GraphQLClient client, WatchQueryOptions? options})
      : super(
    client: client,
    options: options ??
        WatchQueryOptions(document: DESTINATIONS_QUERY_DOCUMENT),
  );

  @override
  Destinations$Query parseData(Map<String, dynamic>? data) {
    return Destinations$Query.fromJson(data ?? {});
  }
}
