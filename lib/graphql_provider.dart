import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:jaz_app/main.dart';

import 'helper/graphqlconnectivity/constants.dart';

final cache = GraphQLCache(store: InMemoryStore());

final client = getClient(
  uri: kParseApiUrl,
  subscriptionUri: "",
);

GraphQLClient getClient({
  required String uri,
  String? subscriptionUri,
}) {
  Link link = HttpLink(
    uri,
    defaultHeaders: {"Authorization": kAuthKey, "accept-language": "en-gb"},
  );

  // if (subscriptionUri != null) {
  //   final WebSocketLink websocketLink = WebSocketLink(
  //     subscriptionUri,
  //     config: SocketClientConfig(
  //       autoReconnect: true,
  //       inactivityTimeout: Duration(seconds: 60),
  //     ),
  //   );
  //
  //   // link = link.concat(websocketLink);
  //   link = Link.split((request) => request.isSubscription, websocketLink, link);
  // }

  return GraphQLClient(
    cache: cache,
    link: link,
  );
}

String? uuidFromObject(Object object) {
  if (object is Map<String, Object>) {
    final String? typeName = object['__typename'] as String;
    final String? id = object['id'].toString();
    if (typeName != null && id != null) {
      return <String>[typeName, id].join('/');
    }
  }
  return null;
}

ValueNotifier<GraphQLClient> clientFor({
  required String uri,
  String? subscriptionUri,
}) {
  Link link = HttpLink(uri);
  // if (subscriptionUri != null) {
  //   final WebSocketLink websocketLink = WebSocketLink(
  //     subscriptionUri,
  //     config: SocketClientConfig(
  //       autoReconnect: true,
  //       inactivityTimeout: Duration(seconds: 60),
  //     ),
  //   );
  //
  //   link = link.concat(websocketLink);
  // }

  return ValueNotifier<GraphQLClient>(
    GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),
      link: link,
    ),
  );
}
