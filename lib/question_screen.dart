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
    final currentQuestion = questions[question];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: onPressed,
              );
            }),
          ],
        ),
      ),
    );
  }

  void onPressed() {
    setState(() {
      question++;
    });
  }
}
