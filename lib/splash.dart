import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sample5/question.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Question()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.network(
                  'https://play-lh.googleusercontent.com/0t5UbiVl1yxi35_I7DJ1J4Rw-o0Ca2giDCGBbxvlp1dfDCF-c2_zDhLCZ797tZru9A'),
            )
          ],
        ),
      ),
    );
  }
}
