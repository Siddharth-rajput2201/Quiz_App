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

  final questions = const [
      {
        'questiontext':'What is my favorate color',
        'answer':['Black','Red','Green','White']
      },

      {
        'questiontext':'What is my favorate animal',
        'answer':['Rabbit','Snake','Elephant','Lion']
      },
    ];
    

  void _answerQuestion()
  { 
    setState(() {
      _questionindex = _questionindex + 1;
    }); 
    print(_questionindex);
    if (_questionindex < questions.length){
      print("We Do not Have more Questions");
    }
  }

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text("Quiz App")
        ),
        body: _questionindex < questions.length ? Column(
          children: <Widget>[
            Question(questions[_questionindex]['questiontext']),

            ...(questions[_questionindex]['answer'] as List<String>).map((answer){
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ) : Center(child: Text("You Did It.....!"),),
      ),
    );
  }
}
