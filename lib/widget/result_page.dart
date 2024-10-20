import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final int totalScore = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      body: Center(
        child: Text(
          "Votre score total est :$totalScore",
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}
