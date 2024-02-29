import 'package:flutter/material.dart';
import 'package:sample5/qnlist.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  int i = 0;
  void next() {
    if (i < qns.length - 1) {
      i++;
    }
  }

  List qns = [
    Quiz(qus: 'Car have 4 wheels', ans: true),
    Quiz(qus: 'An atom is the smallest particle.', ans: false),
    Quiz(qus: 'Boiling water is 100 degrees Celsius.', ans: true),
    Quiz(qus: 'Butterflies taste things with their wings.', ans: false),
    Quiz(qus: 'The sun is not a star.', ans: false),
    Quiz(qus: 'Lightning can’t strike in the same place twice.', ans: false),
  ];
  void check(bool ans) {
    if (qns[i].ans == ans) {
      print('ans correct');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[900],
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Container(
                child: Text(
                  qns[i].qus,
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 400,
              ),
              Container(
                padding: EdgeInsets.all(0),
                width: 400,
                height: 60,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      check(true);
                      next();
                    });
                  },
                  child: Text(
                    'Yes',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  style:
                  TextButton.styleFrom(backgroundColor: Colors.lightGreen),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(0),
                width: 400,
                height: 60,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      check(false);
                      next();
                    });
                  },
                  child: Text(
                    'No',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                ),
              ),
              Container(
                padding: EdgeInsets.all(0),
                width: 400,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.close_sharp,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
