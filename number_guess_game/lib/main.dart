import 'dart:ui';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:number_guess_game/Mind.dart';
import 'package:number_guess_game/Game.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Guess Game",
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new Main(),
      image: Image.asset('images/icon.png'),
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Number Guess Game")),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 450,
          child: Row(
            children: [
              Container(
                height: 200,
                width: 150,
                child: Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            child: FlatButton(
                              child: Image.asset("images/easy.png"),
                              onPressed: () {
                                var ran = new Random();
                                Mind.Random = ran.nextInt(50);
                                Mind.imageName = "images/easy.png";
                                Mind.text = "Easy";
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Game()),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Text("Easy"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 150,
                child: Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            child: FlatButton(
                              child: Image.asset("images/hard.png"),
                              onPressed: () {
                                var ran = new Random();
                                Mind.Random = ran.nextInt(50);
                                Mind.imageName = "images/hard.png";
                                Mind.text = "Hard";
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Game()),
                                );
                                // Hard
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Text("Hard"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 150,
                child: Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            child: FlatButton(
                              child: Image.asset("images/restart.png"),
                              onPressed: () {
                                // Restart
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Text("Re-start"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
