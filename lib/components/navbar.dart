import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        Container(
          child: Icon(Icons.menu_rounded, size: 40.0),
        )
      ],
    );
  }
}
