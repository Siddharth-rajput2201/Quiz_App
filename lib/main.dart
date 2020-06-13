import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';

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
    var questions = [
      {
        'questiontext':'What is my favorate color',
        'answer':['Black','Red','Green','White']
      },

      {
        'questiontext':'What is my favorate animal',
        'answer':['Rabbit','Snake','Elephant','Lion']
      },
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text("Quiz App")
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionindex]['questiontext']),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
