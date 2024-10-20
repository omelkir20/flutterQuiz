import 'package:flutter/material.dart';

class Question5 extends StatelessWidget {
  const Question5({super.key});

  void _answerQuestion(BuildContext context, int score, int totalScore) {
    int finalScore = totalScore + score;
    Navigator.pushNamed(context, '/result', arguments: finalScore);
  }

  @override
  Widget build(BuildContext context) {
    final int totalScore = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 250.0),
              child: Text(
                "Question 5 :",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 212, 13, 153),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40.0,left: 20.0),
              child: Text(
                "Quelle est votre langage programmation préférée ?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: ElevatedButton(
                onPressed: () {
                  _answerQuestion(context, 35, totalScore);
                },
                child: const Text("JAVA"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  _answerQuestion(context, 22, totalScore);
                },
                child: const Text("Paython"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  _answerQuestion(context, 20, totalScore);
                },
                child: const Text("Kotlin"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
