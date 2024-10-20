import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 200.0),
            child: Text(
              "Mon app flutter",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 212, 13, 153),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              "Bonjour DSI 32 !",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 228, 92, 187),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Image.asset('assets/img/quiz2.png'),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/question');
              },
              child: const Text("Quiz"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 212, 13, 153),
              ),
            ),
          ),
        ],
      ),
    );
  }
}