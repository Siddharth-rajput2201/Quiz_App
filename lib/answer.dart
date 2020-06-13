import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selecthandler;

 Answer(this.selecthandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child : RaisedButton(textColor: Colors.white,color: Colors.blue,onPressed: selecthandler ,child: Text("Answer1"),),
    );
  }
}