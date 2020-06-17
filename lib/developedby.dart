import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Developedby extends StatelessWidget {

  void _githublancher()async{
    await launch("https://github.com/Siddharth-rajput2201");
  }

  void _linkdinlancher()async{
    await launch("https://www.linkedin.com/in/siddharth-rajput-8111a1194/");
  }

  void _instalancher()async{
    await launch("https://www.instagram.com/siddharth_rajput22/");
  } 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children : <Widget>[
           Padding(
             padding: const EdgeInsets.only(left :20.0,right: 20.0 ,bottom:10,top : 10 ),
             child: Divider(thickness: 2,),
           ),
           Text("Developed By",style: GoogleFonts.patrickHand(textStyle:TextStyle(color: Colors.grey[500],fontSize: 18),),),
           Text("SIDDHARTH RAJPUT",style: GoogleFonts.patrickHand(textStyle:TextStyle(color: Colors.grey[500],fontSize: 20),),),
           Row(mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
             GestureDetector(
               onTap: _githublancher,
               child: Image.asset("Assets/github.png",height: 50,width: 50,),
             ),
             GestureDetector(
               onTap: _linkdinlancher,
               child: Image.asset("Assets/linkdin.png",height: 50,width: 50,),
             ),
             GestureDetector(
               onTap: _instalancher,
               child: Image.asset("Assets/instagram.png",height: 35,width: 35,),
             ),
           ],)
        ]
      ),
    );
  }
}