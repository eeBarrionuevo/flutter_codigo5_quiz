import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizPage(),
    );
  }
}

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QuizApp"),
        centerTitle: true,
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
