import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'question_bank.dart';

qusbank bank =qusbank();

void main() {
  runApp(quiz());
}
class quiz extends StatelessWidget {
  const quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false ,
        home: Scaffold(
        appBar: AppBar(title: Text("QUIZ_APP"),),

        body: SafeArea(
     child: quizApp(),
    ),

    ));
  }
}



class quizApp extends StatefulWidget {
  const quizApp({Key? key}) : super(key: key);

  @override
  _quizAppState createState() => _quizAppState();
}

class _quizAppState extends State<quizApp> {
  List <Icon> result=[];
  void checkanswer(bool userpickeranswer){
    bool correctanswer=bank.right_answer();
    setState(() {
      if(bank.finished()==true){
        Alert(context: context,
          title: 'Finished',
          desc: 'Attemt\! All Question\'s',
        ).show();

        bank.rest_questionbank();
        result=[];
      }
      else{
        if(userpickeranswer==correctanswer){
          result.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        }
        else{
          result.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        bank.move_next_question();
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Expanded(
                  child: Center(
                    child: Text(
                      bank.getquestion(),                             // call quetion
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  )),
              Expanded(
                flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  Center(
                  child: FlatButton(
                    onPressed: (){
                      checkanswer(true);
                    },
                    hoverColor: Colors.green[300],
                    height: 50,
                  child: Text("TRUE",
                  style: TextStyle(
                    color: Colors.white
                  ),),
                color: Colors.green[600],
                ),),
                      Center(
                        child: FlatButton(
                          onPressed: (){
                            checkanswer(false);
                          },
                          hoverColor: Colors.red[300],
                          height: 50,
                          child: Text("FALSE",
                              style: TextStyle(
                                  color: Colors.white
                              )),
                          color: Colors.red[600],
                          ),)
                    ],
                  )),
              Expanded(
                  child: Row(
                children: result,
              ))
            ],
          );

  }
}
