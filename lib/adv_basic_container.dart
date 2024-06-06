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
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Learn Flutter the fun way!'),
            TextButton(
              onPressed: onPressed,
              child: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }

  void onPressed() {}
}
