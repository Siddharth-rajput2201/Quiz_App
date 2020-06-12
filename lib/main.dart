import 'package:flutter/material.dart';

import './question.dart';

void main()
{
  runApp(MyApp()); 
}

class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionindex  = 0;

  void _answerQuestion()
  { 
    setState(() {
      _questionindex = _questionindex + 1;
    }); 
    print(_questionindex);
    print("Answer Chosen!");
  }

  @override 
  Widget build(BuildContext context) {
    var questions = ["What is Your Favourite Color?","What is your Favourite Animal"];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text("Quiz App")
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionindex]),
            RaisedButton(onPressed: _answerQuestion ,child: Text("Answer1"),),
            RaisedButton(onPressed: _answerQuestion,child: Text("Answer2"),),
            RaisedButton(onPressed: _answerQuestion,child: Text("Answer3"),),
            RaisedButton(onPressed: _answerQuestion,child: Text("Answer4"),),
          ],
        ),
      ),
    );
  }
}
