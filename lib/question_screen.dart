import 'dart:math';

import 'package:flutter/material.dart';

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
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Question Screen',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
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
