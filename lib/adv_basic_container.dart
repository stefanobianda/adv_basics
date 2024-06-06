import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

class AdvBasicContainer extends StatelessWidget {
  const AdvBasicContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.indigo, Color.fromARGB(255, 137, 98, 228)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const StartScreen(),
    );
  }
}
