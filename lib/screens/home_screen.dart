import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:learn_flutter/models/touristspot.dart';
import 'package:learn_flutter/utils/parser.dart';
import '../components/carosel.dart';

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
    description
    bestTime
    images
    rating
    type
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

          spots.addAll(parseTourists(result.data));

          return Container(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Must Visit",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      )),
                  Row(
                    children: [
                      Expanded(
                          child: SideCarosel(
                        spots: spots,
                      ))
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
