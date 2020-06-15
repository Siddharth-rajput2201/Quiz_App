import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultscore;

  Result(this.resultscore);
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("You Did It.....!"),);
  }
}