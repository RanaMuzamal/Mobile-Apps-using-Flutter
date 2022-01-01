import 'package:flutter/material.dart';
import 'package:number_guess_game/mod.dart';
import 'package:number_guess_game/Mind.dart';
import 'dart:math';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  SplashIt(int duration, BuildContext context) {
    return Future.delayed(
        Duration(seconds: duration),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => GameStart())));
  }

  @override
  Widget build(BuildContext context) {
    SplashIt(0, context);
    return Mod();
  }
}

class GameStart extends StatefulWidget {
  const GameStart({Key? key}) : super(key: key);

  @override
  _GameStartState createState() => _GameStartState();
}

class _GameStartState extends State<GameStart> {
  var val = 0;
  var error = "";
  var count = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Mode: " + Mind.text)),
        ),
        body: Center(
          child: Container(
            // height: 700,
            // width: 500,
            // color: Colors.blue,
            child: Center(
              child: Container(
                height: 600,
                width: 400,
                color: Colors.black12,
                child: Center(
                  child: (count == 0)
                      ? Container(
                          // height: 500,
                          // width: 300,
                          child: Center(
                          child: Container(
                            height: 200,
                            width: 300,
                            child: Center(
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 300,
                                    child: Center(
                                      child: Text(Mind.done),
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    width: 300,
                                    child: Center(
                                      child: FlatButton(
                                        color: Colors.blue,
                                        child: Text(
                                          "Home",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ))
                      : Container(
                          height: 500,
                          width: 300,
                          child: Center(
                            child: Column(
                              children: [
                                Container(),
                                Container(
                                  child: (Mind.text == "Easy")
                                      ? Text("Number Will Be Between " +
                                          (Mind.Random - Mind.Random % 10)
                                              .toString() +
                                          " and " +
                                          (10 + Mind.Random - Mind.Random % 10)
                                              .toString())
                                      : Text(""),
                                ),
                                Container(
                                  height: 50,
                                  width: 300,
                                  child: Center(
                                    child: Text(
                                      "Left Tries : " + count.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(Mind.Random.toString()),
                                ),
                                Container(
                                  height: 100,
                                  width: 300,
                                  child: Center(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Number",
                                      ),
                                      onChanged: (value) {
                                        try {
                                          val = int.parse(value);
                                        } catch (Exception) {}
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 300,
                                  child: Center(
                                    child: FlatButton(
                                      color: Colors.blue,
                                      child: Text(
                                        "Guess",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      onPressed: () {
                                        if (val == Mind.Random) {
                                          count = 0;
                                          Mind.done = "Correct Number " +
                                              Mind.Random.toString();
                                          error = "Job Done";
                                        } else {
                                          count--;
                                          Mind.done =
                                              "Game Over : Correct Number is = " +
                                                  Mind.Random.toString();
                                          error = "Wrong Number ";
                                        }
                                        setState(() {});
                                        //Pressesd
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 300,
                                ),
                                Container(
                                  height: 100,
                                  width: 300,
                                  child: Center(
                                    child: Text(error),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                ),
              ),
            ),
          ),
        ));
  }
}
