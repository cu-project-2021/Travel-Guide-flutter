import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:learn_flutter/components/heading.dart';
import 'package:learn_flutter/components/navbar.dart';
import 'package:learn_flutter/components/searchbar.dart';
import 'package:learn_flutter/components/vSpace.dart';
import 'package:learn_flutter/models/touristspot.dart';
import 'package:learn_flutter/utils/parser.dart';
import '../components/carosel.dart';
import '../components/iconBadge.dart';

class HomeScreen extends StatelessWidget {
  final List<TouristSpot> spots = [];
  PageController _pageController;
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Query(
        options: QueryOptions(document: gql("""
      
      query {
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
} 
      """)),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {
          spots.addAll(parseTourists(result.data));
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: 40.0, bottom: 10.0, left: 10.0, right: 10.0),
              child: Column(
                children: [
                  Navbar(),
                  VSpace(),
                  SearchBar(),
                  VSpace(),
                  Heading("Popular Places Nearby"),
                  VSpace(),
                  SideCarosel(spots: spots),
                  VSpace(),
                  Heading("Must visit"),
                  VSpace(),
                  Query(
                      options: QueryOptions(document: gql(""" 
                query {
  allTouristSpots(order: {rating: desc}) {
    id
    name
    state
    rating,
    description,
    type,
    images,
    bestTime
  }
}
                
                """)),
                      builder: (QueryResult result,
                          {VoidCallback refetch, FetchMore fetchMore}) {
                        List<TouristSpot> mustVisit = [];
                        mustVisit.addAll(parseTourists(result.data));
                        return Container(
                          child: SideCarosel(
                            spots: mustVisit,
                          ),
                        );
                      })
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              width: 7.0,
            ),
            barIcon(icon: Icons.home, page: 0),
            barIcon(icon: Icons.person, page: 3),
            SizedBox(width: 7.0),
          ],
        ),
      ),
    );
  }

  Widget barIcon(
      {IconData icon = Icons.home, int page = 0, bool badge = false}) {
    // ignore: missing_required_param
    return IconButton(
      icon: badge ? IconBadge(icon: icon, size: 24.0) : Icon(icon, size: 24.0),
    );
  }
}
