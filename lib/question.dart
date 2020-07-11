import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;

  Question(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Text(
        this.text,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
