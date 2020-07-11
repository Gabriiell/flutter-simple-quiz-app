import 'package:flutter/material.dart';

class QuizResult extends StatelessWidget {
  final int score;
  final Function onReset;

  String get result {
    if (this.score <= 45) {
      return 'You are sad :(';
    }

    if (this.score <= 60) {
      return 'You are great :)';
    }

    return 'You are awesome :D';
  }

  QuizResult({@required this.score, this.onReset});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            this.result,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
          FlatButton(
            child: Text(
              'Reset quiz!',
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            onPressed: this.onReset,
          )
        ],
      ),
    );
  }
}
