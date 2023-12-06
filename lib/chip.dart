
import 'package:flutter/material.dart';
import 'main.dart';


class MyChipWidget extends StatefulWidget {
  final String title;

  MyChipWidget({required this.title});

  @override
  _MyChipWidgetState createState() => _MyChipWidgetState(text : this.title);
}

class _MyChipWidgetState extends State<MyChipWidget> {
  bool chosen = false;
  Color buttonColorDefault = Colors.grey;
  Color buttonColorChosen = Colors.green;
  final String text; 
  _MyChipWidgetState({required this.text});
  

  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(3.0),
      child: FloatingActionButton.extended(
        splashColor: Colors.green,
        backgroundColor: chosen ? buttonColorChosen : buttonColorDefault,
        onPressed: () {
          setState(() {
            chosen = !chosen;
          });
        },
        
        label: Text(text),
      ),
    );
  }
}
