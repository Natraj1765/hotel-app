import 'package:jaz_app/models/graphql/graphql_api.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:graphql/client.dart';

class GetOfferListBloc extends QueryBloc<GetOfferList$Query> {
  GetOfferListBloc({required GraphQLClient client, WatchQueryOptions? options})
      : super(
    client: client,
    options: options ??
        WatchQueryOptions(document: GET_OFFER_LIST_QUERY_DOCUMENT),
  );
  @override
  GetOfferList$Query parseData(Map<String, dynamic>? data) {
    return GetOfferList$Query.fromJson(data ?? {});
  }
}
