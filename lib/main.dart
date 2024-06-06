import 'package:adv_basics/adv_basic_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdvBasicApp());
}

class AdvBasicApp extends StatelessWidget {
  const AdvBasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: AdvBasicContainer(),
      ),
    );
  }
}
