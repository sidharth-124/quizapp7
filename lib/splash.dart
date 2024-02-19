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
    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Question()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'QUIZ APP',
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.network(
                  'https://static.vecteezy.com/system/resources/thumbnails/021/841/426/small/quiz-icon-set-interview-illustration-sign-collection-debriefing-symbol-or-logo-vector.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
