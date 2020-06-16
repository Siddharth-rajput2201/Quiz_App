import 'package:flutter/material.dart';

class Skip extends StatelessWidget {
  final Function skiphandler;

  Skip(this.skiphandler);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Skip"),
      onPressed: skiphandler,
    );
  }
}