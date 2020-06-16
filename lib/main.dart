import 'package:flutter/material.dart';
import 'package:quizapp/developedby.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';


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
  int _totalscore = 0;

  final _questions = const [
      {
        'questiontext':'What is my favorate color',
        'answer':[{'text':'Black','score': 10},{'text':'Red','score': 10},{'text':'Green','score': 10},{'text':'Black','score ': 10}]
      },

      {
        'questiontext':'What is my favorate animal',
        'answer':[{'text':'Rabbit','score': 10},{'text':'Snake','score': 10},{'text':'Tiger','score': 10},{'text':'Lion','score': 10}]
      },
    ];
    
   

  void _answerQuestion(int score)
  { 
    _totalscore +=  score;
    setState(() {
      _questionindex = _questionindex + 1;
    });
    print(_totalscore); 
    print(_questionindex);
    if (_questionindex < _questions.length){
      print("We Do not Have more _Questions");
    }
  }


  void _resetquiz(){
    setState(() {
       _questionindex  = 0;
       _totalscore = 0;
       });
  }

  void _increase(){
    setState(() {
      _questionindex = _questionindex + 1;
    });
  }

  void _decrease(){

    setState(() {
      if(_questionindex == 0){
         _questionindex = 0;
      }
      else{
        _questionindex = _questionindex - 1;
      }
    });
  }

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
            child: AppBar(
            backgroundColor: Colors.white,
            title: Image.asset('Assets/logo.png', fit: BoxFit.fill,height: 50,width: 190,),
            centerTitle: true,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
        ),
        ),
          ),
        ),
        body: _questionindex < _questions.length ? 
        Column(
          children: <Widget>[
            Quiz(answerQuestion: _answerQuestion, questionindex: _questionindex, questions: _questions,skiphandler: _increase,backhandler: _decrease,),
            Developedby(),
          ],
        ) : 
        Result(_totalscore,_resetquiz),
      ),
    );
  }
}
