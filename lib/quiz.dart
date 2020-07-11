import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './models/question.dart';

class Quiz extends StatelessWidget {
  final QuestionModel question;
  final Function onAnswer;

  Quiz({@required this.question, this.onAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(this.question.text),
        ...this
            .question
            .answers
            .map((a) => Answer(
                  text: a.text,
                  onAnswer: () => this.onAnswer(a),
                ))
            .toList(),
      ],
    );
  }
}
