import 'package:flutter/material.dart';
import 'package:learn_flutter/models/touristspot.dart';

class SideCarosel extends StatelessWidget {
  final List<TouristSpot> spots;
  SideCarosel({@required this.spots});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: spots.length,
        itemBuilder: (context, index) {
          print(spots[index].images[0]);
          return Container(
              padding: EdgeInsets.all(7),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(spots[index].images[0]),
              ));
        },
      ),
    );
  }
}
