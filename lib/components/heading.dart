import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;
  Heading(this.text);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        this.text,
        style: TextStyle(
            fontSize: 24.8,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800]),
      ),
    );
  }
}
