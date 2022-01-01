import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Scaffold(
        appBar: AppBar(
          title: Text("8-Ball Magic"),
          backgroundColor: Colors.blue,
        ),
        body: magicball(),
      ),
    ),
  );
}

class magicball extends StatefulWidget {
  const magicball({Key? key}) : super(key: key);

  @override
  _magicballState createState() => _magicballState();
}

class _magicballState extends State<magicball> {
  var magic=Random().nextInt(5)+1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: FlatButton(
          onPressed: (){
            setState(() {
              magic=Random().nextInt(5)+1;
            });
          },
          child: Image.asset(
              'images/ball$magic.png'),
        ),
      ),
      

    );
  }
}


