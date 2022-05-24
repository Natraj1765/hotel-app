import 'package:jaz_app/models/graphql/graphql_api.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:graphql/client.dart';

class ProductQueryBloc extends QueryBloc<ProductsQuery$Query> {
  static int defaultLimit = 10;

  ProductQueryBloc({required GraphQLClient client, WatchQueryOptions? options})
      : super(
          client: client,
          options: options ??
              WatchQueryOptions(document: PRODUCTS_QUERY_QUERY_DOCUMENT),
        );

  @override
  ProductsQuery$Query parseData(Map<String, dynamic>? data) {
    return ProductsQuery$Query.fromJson(data ?? {});
  }

  @override
  bool shouldFetchMore(int i, int threshold) {
    return state.maybeWhen(
        loaded: (data, result) {
          return (data.products!.pagination!.showingResultsFrom +
                  data.products!.pagination!.resultsPerPage) <=
              data.products!.pagination!.resultsTotal;
        },
        orElse: () => false);


  }

  void fetchMore({required int limit, required int offset}) {}
}
