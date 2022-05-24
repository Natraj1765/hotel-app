import 'package:jaz_app/models/graphql/graphql_api.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:graphql/client.dart';

class GetHotelReviewBloc extends QueryBloc<GetHotelReviews$Query> {
  GetHotelReviewBloc({required GraphQLClient client, WatchQueryOptions? options})
      : super(
    client: client,
    options: options ??
        WatchQueryOptions(document: GET_HOTEL_REVIEWS_QUERY_DOCUMENT),
  );

  @override
  GetHotelReviews$Query parseData(Map<String, dynamic>? data) {
    return GetHotelReviews$Query.fromJson(data ?? {});
  }
}