import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:learn_flutter/components/carosel.dart';
import 'package:learn_flutter/components/heading.dart';
import 'package:learn_flutter/components/vSpace.dart';
import 'package:learn_flutter/models/touristspot.dart';

class DetailsScreen extends StatelessWidget {
  final TouristSpot spot;

  DetailsScreen({@required this.spot});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            VSpace(),
            Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(this.spot.images[0])),
            ),
            VSpace(),
            Heading(this.spot.name),
            SubHeading(text: this.spot.state),
            // Divider(
            //   height: 10.0,
            //   color: Colors.grey,
            // ),
            VSpace(),
            Expanded(
              child: Text(
                spot.description,
                style: TextStyle(
                  fontSize: 14,
                  letterSpacing: 2.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
