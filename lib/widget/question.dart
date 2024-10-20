import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({super.key});

  void _answerQuestion(BuildContext context, int score) {
    Navigator.pushNamed(context, '/question2', arguments: score);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 250.0),
              child: Text(
                "Question 1 :",
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
                "Quelle est la capitale de la Tunisie ?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: ElevatedButton(
                onPressed: () {
                  _answerQuestion(context, 0);
                },
                child: const Text("Bizert"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  _answerQuestion(context, 10);
                },
                child: const Text("Tunis"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  _answerQuestion(context, 0);
                },
                child: const Text("Tozeur"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
