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
         backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 200,),
              Container(child: Text('a')),
              SizedBox(
                height: 400,
              ),
              Container(padding: EdgeInsets.all(0),width: 400,height: 60,
                child: TextButton(
                  onPressed: null,
                  child: Text('Yes',style: TextStyle(color: Colors.black,fontSize: 20,),),
                  style: TextButton.styleFrom(backgroundColor: Colors.lightGreen),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(padding: EdgeInsets.all(0),width: 400,height: 60,
                child: TextButton(
                  onPressed: null,
                  child: Text('No'),
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
