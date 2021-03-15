import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:learn_flutter/models/touristspot.dart';

class HomeScreen extends StatelessWidget {
  final List<TouristSpot> spots = [];
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
    state
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

          for (int i = 0; i < result.data["allTouristSpots"].length; i++) {
            spots.add(TouristSpot.fromJson(result.data["allTouristSpots"][i]));
          }

          return ListView.builder(
            itemCount: spots.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(spots[index].name),
                subtitle: Text(spots[index].state),
              );
            },
          );
        },
      ),
    );
  }
}
