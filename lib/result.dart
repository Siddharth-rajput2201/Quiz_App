import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultscore;
  final Function resethandler;

  String get resultsentence{
    String resulttext = 'You Did it!...';
    if(resultscore <= 8 ){
      resulttext = 'You are awesome';
    }
    else if(resultscore <= 12){
      resulttext = 'You are.... stange';
    }
    else{
      resulttext = 'You are inncocent';
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
          FlatButton(child: Text("Restart Quiz!"),onPressed: resethandler,)
        ],
      )
      );
  }
}