import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';


class Quiz extends StatelessWidget {

  final List<Map<String, Object>>questions;
  final Function answerQuestion;
  final int questionindex;

  Quiz({@required this.answerQuestion,@required this.questions,@required this.questionindex});
  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Question(questions[questionindex]['questiontext']),

            ...(questions[questionindex]['answer'] as List<Map<String,Object>>).map((answer){
              return Answer(()=>answerQuestion(answer['score']), answer['text']);
            }).toList()
          ],
        );
  }
}