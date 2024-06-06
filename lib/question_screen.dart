import 'dart:math';

import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/models/quiz_question.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var randomizer = Random();

  int question = 0;

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(answerText: answer, onTap: () {});
          }),
        ],
      ),
    );
  }

  void onPressed() {
    setState(() {
      question = randomizer.nextInt(10);
    });
  }
}
