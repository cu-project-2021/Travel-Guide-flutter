import 'dart:async';
import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/home_screen.dart';

class SplashScren extends StatefulWidget {
  @override
  _SplashScrenState createState() => _SplashScrenState();
}

class _SplashScrenState extends State<SplashScren> {
  void startTimer() {
    Timer _timer = new Timer(Duration(seconds: 2), () {
      Route route = MaterialPageRoute(builder: (context) => HomeScreen());

      Navigator.pushReplacement(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    startTimer();
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
              child: Text("Splash Screen"),
            )
          ],
        ),
      ),
    );
  }
}
