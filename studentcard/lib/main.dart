// import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(student());


}
class student extends StatelessWidget {
  const student({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                height: 100.0,
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Align(
                      child: Text("M.Muzamal Khan",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,),
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      child: Text("CIIT/FA18-BSE-016/VHR",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,),
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      child: Text("CNIC : 366035816991-9",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,),
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      child: Text("DOB:02/02/2000  Validity : 31/07/2022",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,),
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),


          Container(

            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(5.0),
            child: Column(

              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    "images/profile.jpg",
                    width: 180.0,
                    height: 210.0,
                    fit: BoxFit.fill,
                  ),
                ),


              ],
            ),
          ),
              Container(
                color: Colors.blue,
                padding: EdgeInsets.all(15.0),
                // margin: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('images/comsats.jpg'),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Container(child: Column(children: [
                      Align(
                        child: Text("Department of Computer Science",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,),
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        child: Text("COMSATS University",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,),
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        child: Text("Islamabad ,Vehari Campus",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,),
                        ),
                        alignment: Alignment.center,
                      ),

                    ],

                    ),)



                  ],),

              ),//logo,Comsat,Intitute



            ],
          ),
        ),
      ),
    );
  }
}






