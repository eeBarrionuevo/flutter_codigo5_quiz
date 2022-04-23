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
      backgroundColor: Color(0xff272C2F),
      appBar: AppBar(
        backgroundColor: Color(0xff272C2F),
        title: Text("QuizApp"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                "Aquí va a ir la pregunta de nuestro quiz asdsad asdsa ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                color: const Color(0xff00E1B7),
                child: const Text("Verdadero"),
                onPressed: () {},
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                color: const Color(0xfff84073),
                child: const Text("False"),
                onPressed: () {},
              ),
            ),
          ),
          Row(
            children: [
              Icon(Icons.check,color: Color(0xff00E1B7),),
              Icon(Icons.check,color: Color(0xff00E1B7),),
              Icon(Icons.check,color: Color(0xff00E1B7),),
              Icon(Icons.close,color: Color(0xfff84073),),
              Icon(Icons.close,color: Color(0xfff84073),),
              Icon(Icons.close,color: Color(0xfff84073),),
              Icon(Icons.close,color: Color(0xfff84073),),
            ],
          ),
        ],
      ),
    );
  }
}
