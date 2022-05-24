import 'package:jaz_app/models/graphql/graphql_api.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:graphql/client.dart';

class GlobalTypesBloc extends QueryBloc<GlobalTypes$Query> {
  GlobalTypesBloc({required GraphQLClient client, WatchQueryOptions? options})
      : super(
    client: client,
    options: options ??
        WatchQueryOptions(document: GLOBAL_TYPES_QUERY_DOCUMENT),
  );

  @override
  GlobalTypes$Query parseData(Map<String, dynamic>? data) {
    return GlobalTypes$Query.fromJson(data ?? {});
  }
}
