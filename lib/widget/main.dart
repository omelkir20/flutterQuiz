import 'package:flutter/material.dart';
import 'package:quiz2/widget/homepage.dart';
import 'package:quiz2/widget/question2.dart';
import 'package:quiz2/widget/question3.dart';
import 'package:quiz2/widget/question4.dart';
import 'package:quiz2/widget/question5.dart';
import 'package:quiz2/widget/result_page.dart';
import 'package:quiz2/widget/question.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Homepage(),
      initialRoute: '/',
      routes: {
        '/question': (context) => const Question(),
        '/question2': (context) => const Question2(),
        '/question3': (context) => const Question3(),
        '/question4': (context) => const Question4(),
        '/question5': (context) => const Question5(),
        '/result': (context) => const ResultPage(),
        '/home': (context) => const Homepage(),
      },
    );
  }
}
