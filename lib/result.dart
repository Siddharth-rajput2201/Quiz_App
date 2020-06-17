import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/developedby.dart';

class Result extends StatelessWidget {

  final int resultscore;
  final Function resethandler;

  String get resultsentence{
    String resulttext = 'You Did it!...';
    if(resultscore == 0 ){
      resulttext = '\nWe Need To Talk ! It is Required...Tap On The Icons Below';
    }
    else if(resultscore <= 10){
      resulttext = '\nUff only 1 Correct Let us know Each Other!...Tap On The Icons Below';
    }
    else if(resultscore <= 20){
      resulttext = '\nYou Know Pretty Much About Me\nBut Have You seen My Linkdin & Github Profile...Tap On The Icons Below';
    }
    else if(resultscore == 30){
      resulttext = '\nUWU 😇 Do I Know You ?Ping Me Up...Tap on The Icons Below';
    } 
    else if(resultscore == 40){
      resulttext = '\nCharmante😘! Let Us Meet ... Ping Me Up Tap On The Icons Below';
    }
    return resulttext;
  }

  String get score{
    String scoretext = 'You Did it!...';
    scoretext = 'SCORE : $resultscore';
    return scoretext;
  }




  Result(this.resultscore,this.resethandler);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 10,right: 10 ,bottom: 10),
            child: Text(score,style: TextStyle(fontSize : 20,color:Colors.green),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0,left: 10,right: 10 ,bottom: 10),
            child: Text(resultsentence,style: GoogleFonts.handlee(textStyle: TextStyle(fontSize : 20),),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20.0,bottom: 20),
            child: RaisedButton(child: Text("Restart Quiz!",style: TextStyle(color : Colors.white),),onPressed: resethandler,color: Colors.orange[400],),
          ),
          Developedby()
        ],
      )
      );
  }
}