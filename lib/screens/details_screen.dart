import 'package:flutter/material.dart';
import 'package:learn_flutter/components/heading.dart';
import 'package:learn_flutter/components/vSpace.dart';
import 'package:learn_flutter/models/touristspot.dart';
import '../components/iconBadge.dart';

class DetailsScreen extends StatelessWidget {
  final TouristSpot spot;

  DetailsScreen({@required this.spot});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: 7.0,
            ),
            barIcon(icon: Icons.home, page: 0),
            barIcon(icon: Icons.person, page: 3),
            SizedBox(
              width: 7.0,
            )
          ],
        ),
      ),
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

  Widget barIcon(
      {IconData icon = Icons.home, int page = 0, bool badge = false}) {
    // ignore: missing_required_param
    return IconButton(
      icon: badge ? IconBadge(icon: icon, size: 24.0) : Icon(icon, size: 24.0),
    );
  }
}
