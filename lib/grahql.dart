import 'package:graphql_flutter/graphql_flutter.dart';

GraphQLClient getGraphqlClient() {
  final HttpLink httpLink =
      HttpLink("https://thoughtful-funky-suede.glitch.me/");

  GraphQLClient client =
      new GraphQLClient(link: httpLink, cache: GraphQLCache());
  return client;
}
