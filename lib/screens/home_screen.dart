import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Query(
        options: QueryOptions(document: gql("""
        query {
  allTouristSpots {
    id
    name
  }
} 
        """)),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }
          if (result.isLoading) {
            return Text("Loading ....");
          }
          return Text(result.data.toString());
        },
      ),
    );
  }
}
