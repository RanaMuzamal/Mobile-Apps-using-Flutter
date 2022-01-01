import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:xylophone_app/userinputs.dart';


class xylo extends StatefulWidget {

  const xylo({Key? key}) : super(key: key);

  @override
  _xyloState createState() => _xyloState();
}

class _xyloState extends State<xylo> {

  //TODO method for playmusic

  void playsound(int soundnum){
    final audioplayer=AudioCache();
    audioplayer.play("note$soundnum.wav");
  }
//TODO method for Design button

  Expanded getpad(int not, Color color){
    return Expanded
      (child: FlatButton(
      color: color,
      onPressed: (){
        playsound(not);
      },
      child: Text(""),

    ));

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Scaffold(
        appBar: AppBar(title: Text("Xylopone"),),
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                getpad(1, Colors.red),
                getpad(2, Colors.orange),
                getpad(3, Colors.yellow),
                getpad(4, Colors.green),
                getpad(5, Colors.cyan),
                getpad(6, Colors.cyanAccent),
                getpad(7, Colors.lightBlueAccent),
                getpad(8, Colors.blueGrey),


              ]


          ),

        ),
      ),

    );
  }
}
