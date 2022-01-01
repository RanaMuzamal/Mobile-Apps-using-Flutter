import 'package:flutter/material.dart';
import 'package:number_guess_game/mod.dart';
import 'package:number_guess_game/Mind.dart';

class Mod extends StatefulWidget {
  const Mod({Key? key}) : super(key: key);

  @override
  _ModState createState() => _ModState();
}

class _ModState extends State<Mod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Guess Game"),),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(Mind.imageName),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Text(Mind.text),
                ),
                Text("\nNumber Guess Game"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
