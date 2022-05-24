import 'package:jaz_app/models/graphql/graphql_api.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:graphql/client.dart';

class GetHotelsAutocompleteBloc extends QueryBloc<GetHotelsAutocomplete$Query> {
  GetHotelsAutocompleteBloc({required GraphQLClient client, WatchQueryOptions? options})
      : super(
    client: client,
    options: options ??
        WatchQueryOptions(document: GET_HOTELS_AUTOCOMPLETE_QUERY_DOCUMENT),
  );

  @override
  GetHotelsAutocomplete$Query parseData(Map<String, dynamic>? data) {
    return GetHotelsAutocomplete$Query.fromJson(data ?? {});
  }
}
