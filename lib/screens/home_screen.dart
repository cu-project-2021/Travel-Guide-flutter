import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Query(
        options: QueryOptions(document: gql("""query {
  allTouristSpots {
    id
    name
    description
    bestTime
    images
    state
    rating
    type
  }
} """)),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {
          return Text(result.toString());
        },
      ),
    );
  }
}
