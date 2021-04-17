import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:learn_flutter/components/heading.dart';
import 'package:learn_flutter/components/navbar.dart';
import 'package:learn_flutter/components/searchbar.dart';
import 'package:learn_flutter/components/vSpace.dart';
import 'package:learn_flutter/models/touristspot.dart';
import 'package:learn_flutter/utils/parser.dart';
import '../components/carosel.dart';

class HomeScreen extends StatelessWidget {
  final List<TouristSpot> spots = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.only(top: 40.0, bottom: 10.0, left: 10.0, right: 10.0),
        child: Column(
          children: [
            Navbar(),
            VSpace(),
            SearchBar(),
            VSpace(),
            Heading("Popular Places Nearby")
          ],
        ),
      ),
    );
  }
}
