import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Answer extends StatelessWidget {

  final Function selecthandler;
  final String answertext;

 Answer(this.selecthandler,this.answertext);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration : BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color:Color.fromRGBO(204, 132, 67, .5) ,blurRadius: 15,
                  )]),
      //  width: double.infinity,
        child : FlatButton(textColor: Colors.black,onPressed: selecthandler ,
        child: Text(answertext,style: GoogleFonts.patrickHand(textStyle: TextStyle(fontSize: 19), ),),),
      ),
    );
  }
}