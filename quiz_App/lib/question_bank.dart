import 'dart:html';

import 'package:quiz_app/QS.dart';

class qusbank{
  int questionnumber=0;

  List<Question> questionbank= [
    Question("Allama Iqbal was born in 9 NOV.", true),
    Question("Allama Iqbal was born in 9 Sialkot.", true),
    Question("Quaid e Azam was founder of Pakistan.", true),
    Question("Karachi is an city of lighiting.", true),
    Question("Imran Khan is an prime minister of Pakistan.", true),


  ];
  void move_next_question(){
    if(questionnumber<questionbank.length-1){
      questionnumber++;
    }
  }

  String getquestion(){
    return questionbank[questionnumber].questiontext;
  }

  bool right_answer(){
    return questionbank[questionnumber].answer;
  }

  bool finished(){
    if(questionnumber>=questionbank.length-1){
      return true;
    }
    else{
      return false;
    }
  }

  void rest_questionbank(){
    questionnumber=0;
  }
}