import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatelessWidget {
  
  final String questiontext;

  Question(this.questiontext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(questiontext , style: GoogleFonts.shadowsIntoLight(textStyle:TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
      textAlign: TextAlign.center,),
    );
  }
}