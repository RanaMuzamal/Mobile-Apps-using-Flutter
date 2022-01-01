import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
class Userpage extends StatefulWidget {
  const Userpage({Key? key}) : super(key: key);

  @override
  _UserpageState createState() => _UserpageState();
}

class _UserpageState extends State<Userpage> {
  int dropdownValue = 1;
  final items=[1,2,3,4,5,6,7,8];
  Color pickcolor=Colors.green;
  void changecolor(Color color)=>setState(()  =>pickcolor=color );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("USER INPUTS"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            AlertDialog(
              titlePadding: const EdgeInsets.all(0),
              contentPadding: const EdgeInsets.all(0),
              content: SingleChildScrollView(
                child: ColorPicker(
                  pickerColor: pickcolor,
                  onColorChanged: changecolor,
                  colorPickerWidth: 300.0,
                  pickerAreaHeightPercent: 0,
                  enableAlpha: true,
                  displayThumbColor: true,
                  showLabel: true,
                  pickerAreaBorderRadius: const BorderRadius.only(topLeft: const Radius.circular(2),topRight:  const Radius.circular(2)),
                ),
              ),
            ),
        DropdownButton<int>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: const TextStyle(color: Colors.black),
          underline: Container(
            height: 5,
            color: Colors.deepPurpleAccent,),
          onChanged: (items) {
            setState(() {
              dropdownValue=items!;
            });
          },

             items: <int>[1,2,3,4,5,6,7,8]
                 .map<DropdownMenuItem<int>>((int value) {
               return DropdownMenuItem<int>(
                 value: value,
                 child: Text("$value"),
               );
             }).toList(),

             )
          ],

        ),
      )
    );

  }
}
