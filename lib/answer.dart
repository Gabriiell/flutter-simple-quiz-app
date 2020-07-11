import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function onAnswer;

  Answer({@required this.text, this.onAnswer});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.blue,
        child: Text(this.text),
        onPressed: this.onAnswer,
      ),
    );
  }
}
