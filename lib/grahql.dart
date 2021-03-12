import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

String typenameDataIdFromObject(Object object) {
  if (object is Map<String, Object> &&
      object.containsKey('__typename') &&
      object.containsKey('id'))
    return "${object['__typename']}/${object['id']}";
  return null;
}

ValueNotifier<GraphQLClient> graphqlClient() {
  final HttpLink httpLink =
      HttpLink("https://thoughtful-funky-suede.glitch.me/");
  final ValueNotifier<GraphQLClient> client = ValueNotifier<GraphQLClient>(
      GraphQLClient(
          link: httpLink,
          cache: GraphQLCache(dataIdFromObject: typenameDataIdFromObject)));
  return client;
}
