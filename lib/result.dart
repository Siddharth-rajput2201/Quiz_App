import 'package:flutter/material.dart';
import 'package:quizapp/developedby.dart';

class Result extends StatelessWidget {

  final int resultscore;
  final Function resethandler;

  String get resultsentence{
    String resulttext = 'You Did it!...';
    if(resultscore == 0 ){
      resulttext = 'SCORE : 0 \nWe Need To Talk ! It is Required.';
    }
    else if(resultscore <= 10){
      resulttext = 'SCORE : 10 \nUff only 1 Correct Let us know Each Other';
    }
    else if(resultscore <= 20){
      resulttext = 'SCORE : 20 \nYou Know Pretty Much About Me\n......But Have You seen My Linkdin & Github Profile';
    }
    else if(resultscore == 30){
      resulttext = 'SCORE : 30 \nUWU 😇 Do I Know You ';
    } 
    else if(resultscore == 40){
      resulttext = 'SCORE : 40 \nTake A SS And share this Score !TAG Me ';
    }
    return resulttext;
  }

  Result(this.resultscore,this.resethandler);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultsentence),
          RaisedButton(child: Text("Restart Quiz!"),onPressed: resethandler,color: Colors.orange,),
          Developedby()
        ],
      )
      );
  }
}