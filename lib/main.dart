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
        'questiontext':'So You Think You know me?\n....Then Tell My Pet Name :>',
        'answer':[{'text':'Monu','score': 10},{'text':'Sonu','score': 0},{'text':'Mona','score': 0},{'text':'Sid','score': 0},{'text':'Sidhu','score': 0},{'text':'I Do Not Have Any 😅','score': 0}]
      },

      {
        'questiontext':'What Is Name At My Insta ?\n....If You Are going To See My Profile You Lose 😠',
        'answer':[{'text':'rajputsiddharth_21','score': 0},{'text':'rajputsiddharth_22','score': 0},{'text':'Siddharh_Rajput20','score': 0},{'text':'siddharth_rajput22','score': 10}]
      },
      
      {
        'questiontext':'In This Lockdown We All Are Having a Free Time.....What Is My Fav Time Killer?',
        'answer':[{'text':'Watching Series','score': 0},{'text':'Watching Anime','score': 0},{'text':'Sleeping 😴 ','score': 0},{'text':'Android App Development','score': 10}]
      },
      

      {
        'questiontext':'My Fav Person And Mentor ?',
        'answer':[{'text':'Sambhav Gupta','score': 0},{'text':'Anurag Batra','score': 10},{'text':'Tanishq Saini','score': 0},{'text':'YOU 💙','score': 0}]
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
        SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              Quiz(answerQuestion: _answerQuestion, questionindex: _questionindex, questions: _questions,skiphandler: _increase,backhandler: _decrease,),
              Developedby(),
            ],
          ),
        ) : 
        Result(_totalscore,_resetquiz),
      ),
    );
  }
}
