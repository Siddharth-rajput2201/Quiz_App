import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';


class Quiz extends StatelessWidget {

  final List<Map<String, Object>>questions;
  final Function answerQuestion;
  final int questionindex;
  final Function skiphandler;
  final Function backhandler;

  Quiz({@required this.answerQuestion,@required this.questions,@required this.questionindex,this.skiphandler,this.backhandler});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top : 20.0,left: 15,right: 15),
      child: Container(
          decoration : BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color:Color.fromRGBO(204, 132, 67, .5) ,blurRadius: 15,
                  )]),
        child: Column(
              children: <Widget>[
                Question(questions[questionindex]['questiontext']),

                ...(questions[questionindex]['answer'] as List<Map<String,Object>>).map((answer){
                  return Answer(()=>answerQuestion(answer['score']), answer['text']);
                }).toList(),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                     child: Text("Back"),
                     onPressed: backhandler,
                      ),
                  ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: RaisedButton(
                     child: Text("Skip"),
                     onPressed: skiphandler,
                      ),
                   )
                ]),
                SizedBox(height: 10,),
                ],
            ),
      ),
    );
  }
}