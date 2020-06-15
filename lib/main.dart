import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';

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

  final _questions = const [
      {
        'questiontext':'What is my favorate color',
        'answer':[{'text':'Black','score ': 10},{'text':'Red','score ': 10},{'text':'Green','score ': 10},{'text':'Black','score ': 10}]
      },

      {
        'questiontext':'What is my favorate animal',
        'answer':[{'text':'Rabbit','score ': 10},{'text':'Snake','score ': 10},{'text':'Tiger','score ': 10},{'text':'Lion','score ': 10}]
      },
    ];
    
    var _totalscore = 0;

  void _answerQuestion(int score)
  { 
    _totalscore +=  score;
    setState(() {
      _questionindex = _questionindex + 1;
    }); 
    print(_questionindex);
    if (_questionindex < _questions.length){
      print("We Do not Have more _Questions");
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
        body: _questionindex < _questions.length ? 
        Quiz(answerQuestion: _answerQuestion, questionindex: _questionindex, questions: _questions,) : 
        Center(child: Text("You Did It.....!"),),
      ),
    );
  }
}
