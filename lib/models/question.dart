import 'package:flutter/foundation.dart';

class AnswerModel {
  final String text;
  final int score;

  AnswerModel({@required this.text, @required this.score});
}

class QuestionModel {
  final String text;
  final List<AnswerModel> answers;

  QuestionModel({@required this.text, @required this.answers});
}
