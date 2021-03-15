import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class MustWatchSpots extends StatefulWidget {
  @override
  _MustWatchSpotsState createState() => _MustWatchSpotsState();
}

class _MustWatchSpotsState extends State<MustWatchSpots> {
  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(document: gql("""
      
      """)),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {
          return Container();
        });
  }
}
