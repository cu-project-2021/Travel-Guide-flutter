import 'package:flutter/material.dart';
import 'package:learn_flutter/models/touristspot.dart';
import 'package:learn_flutter/screens/details_screen.dart';

class SideDrawer extends StatelessWidget {
  final List<TouristSpot> spot;
  SideDrawer({@required this.spot});
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      child: ListView.builder(
          itemCount: this.spot.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(this.spot[index].name),
              subtitle: Text(this.spot[index].state),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                              spot: this.spot[index],
                            )));
              },
            );
          }),
    ));
  }
}
