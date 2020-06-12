import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  void answerQuestion()
  {
    print("Answer Chosen!");
  }
  @override 
  Widget build(BuildContext context) {
    var questions = ["What is Your Favourite Color?","What is your Favourite Animal"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text("Quiz App")
        ),
        body: Column(
          children: <Widget>[
            Text("This is a Question!"),
            RaisedButton(onPressed: answerQuestion ,child: Text("Answer1"),),
            RaisedButton(onPressed: answerQuestion,child: Text("Answer2"),),
            RaisedButton(onPressed: answerQuestion,child: Text("Answer3"),),
            RaisedButton(onPressed: answerQuestion,child: Text("Answer4"),),
          ],
        ),
      ),
    );
  }
}
