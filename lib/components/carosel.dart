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
          return GestureDetector(
            onTap: () => {print(spots[index].name)},
            child: Container(
                padding: EdgeInsets.all(7),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      Image.network(spots[index].images[0]),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          spots[index].name,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      )
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
