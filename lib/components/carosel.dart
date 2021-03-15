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
          return Container(
              padding: EdgeInsets.all(7),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg"),
              ));
        },
      ),
    );
  }
}
