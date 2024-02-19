import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.network(
                  'https://www.shutterstock.com/image-illustration/questions-icon-png-flat-design-260nw-2324295723.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
