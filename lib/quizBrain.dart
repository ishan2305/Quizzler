import 'package:flutter/material.dart';
import 'main.dart';
import 'questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

List<Icon> scoreKeeper = [];

class QuestionAndAnswers {
  List<QuestionSet> _questionBank = [
    QuestionSet('You can lead a cow down stairs but not up stairs.', false),
    QuestionSet(
        'Approximately one quarter of human bones are in the feet.', true),
    QuestionSet('A slug\'s blood is green.', true)
  ];

  QuestionSet getQuestionAndAnswer(int index) {
    return _questionBank[index];
  }

  int check(bool ans, int index) {
    if (_questionBank[index].answer == ans) {
      scoreKeeper.add(Icon(
        Icons.check,
        color: Colors.green,
      ));
    } else {
      scoreKeeper.add(Icon(
        Icons.close,
        color: Colors.red,
      ));
    }

    index = (index + 1) % 3;
    return index;
  }
}
