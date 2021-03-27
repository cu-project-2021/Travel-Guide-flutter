import 'package:flutter/material.dart';
import 'package:learn_flutter/models/touristspot.dart';

class  DetailsScreen extends StatelessWidget {
  final TouristSpot spot;

  DetailsScreen({@required this.spot});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              spot.name,
              style: TextStyle(fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
