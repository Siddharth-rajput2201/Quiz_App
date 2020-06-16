import 'package:flutter/material.dart';

class Developedby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children : <Widget>[
           Padding(
             padding: const EdgeInsets.only(left :20.0,right: 20.0 ,bottom:10,top : 10 ),
             child: Divider(thickness: 2,),
           ),
           Center(child: Text("       Developed By \n SIDDHARTH RAJPUT",style: TextStyle(color: Colors.grey[500]),))
        ]
      ),
    );
  }
}