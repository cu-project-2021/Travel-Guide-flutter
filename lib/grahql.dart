import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

ValueNotifier<GraphQLClient> graphqlClient() {
  final HttpLink httpLink =
      HttpLink("https://thoughtful-funky-suede.glitch.me/");
  final ValueNotifier<GraphQLClient> client =
      ValueNotifier<GraphQLClient>(GraphQLClient(link: httpLink, cache: null));
  return client;
}
