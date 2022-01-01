import 'dart:async';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:xylophone_app/userinputs.dart';

import 'xylophone.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner:  false ,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),

      ),
      body: Nextmove(),
    ),
  )
  );
}

class Nextmove extends StatefulWidget {
  const Nextmove({Key? key}) : super(key: key);

  @override
  _NextmoveState createState() => _NextmoveState();
}

class _NextmoveState extends State<Nextmove> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>xylo()));
            },
            color: Colors.blueGrey,
            child: Text("XYLOPHONE",
            style: TextStyle(
              fontSize: 16,
              color:  Colors.white,
            ),),

          ),
        ),
        Center(
          child: RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Userpage()));
          },
            color: Colors.lightGreenAccent,
            child: Text("USER INPUTS",
              style: TextStyle(
                fontSize: 16,
                color:  Colors.black,
              ),),

          ),
        ),
      ],
    ));
  }
}




