import 'package:flutter/material.dart';
import './quiz-result.dart';
import './quiz.dart';
import './models/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int totalScore = 0;

  final List<QuestionModel> questions = [
    QuestionModel(
      text: 'What is your favorite colour?',
      answers: [
        AnswerModel(text: 'Red', score: 10),
        AnswerModel(text: 'Blue', score: 20),
        AnswerModel(text: 'Green', score: 30),
      ],
    ),
    QuestionModel(
      text: 'What is your favorite animal?',
      answers: [
        AnswerModel(text: 'Horse', score: 15),
        AnswerModel(text: 'Dog', score: 25),
        AnswerModel(text: 'Cat', score: 35),
        AnswerModel(text: 'Hamster', score: 45),
      ],
    ),
  ];

  void handleAnswer(AnswerModel answer) {
    print('Button pressed');
    this.totalScore += answer.score;

    setState(() {
      this.questionIndex++;
    });
  }

  void resetQuiz() {
    setState(() {
      this.questionIndex = 0;
      this.totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: this.questionIndex == this.questions.length
            ? QuizResult(
                score: this.totalScore,
                onReset: this.resetQuiz,
              )
            : Quiz(
                question: this.questions[this.questionIndex],
                onAnswer: this.handleAnswer,
              ),
      ),
    );
  }
}
