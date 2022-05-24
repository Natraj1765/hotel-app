import 'package:jaz_app/models/graphql/graphql_api.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:graphql/client.dart';

class RoomsOverviewBloc extends QueryBloc<GetRoomOverview$Query> {
  RoomsOverviewBloc({required GraphQLClient client, WatchQueryOptions? options})
      : super(
    client: client,
    options: options ??
        WatchQueryOptions(document: GET_ROOM_OVERVIEW_QUERY_DOCUMENT),
  );
  @override
  GetRoomOverview$Query parseData(Map<String, dynamic>? data) {
    return GetRoomOverview$Query.fromJson(data ?? {});
  }
}
