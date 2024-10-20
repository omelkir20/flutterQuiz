import 'package:flutter/material.dart';

class Question4 extends StatelessWidget {
  const Question4({super.key});

  void _answerQuestion(BuildContext context, int score, int totalScore) {
    int finalScore = totalScore + score;
    Navigator.pushNamed(context, '/question5', arguments: finalScore);
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
                "Question 4 :",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 212, 13, 153),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: Text(
                "Quelle est votre matiére préférée ?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: ElevatedButton(
                onPressed: () {
                  _answerQuestion(context, 15, totalScore);
                },
                child: const Text("Dev moblie"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  _answerQuestion(context, 12, totalScore);
                },
                child: const Text("SOA"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  _answerQuestion(context, 20, totalScore);
                },
                child: const Text("Big data"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
