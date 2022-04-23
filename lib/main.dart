import 'package:flutter/material.dart';
import 'package:flutter_codigo5_quiz/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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

class QuizPage extends StatefulWidget {
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuizBrain matasquita = QuizBrain();

  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userAnswer) {
    if (matasquita.isFinished()) {
      Alert(
        context: context,
        type: AlertType.info,
        title: "Atención",
        desc: "El quiz ha terminado",
        buttons: [
          DialogButton(
            child: Text(
              "Reiniciar",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Color.fromRGBO(0, 179, 134, 1.0),
            radius: BorderRadius.circular(0.0),
          ),
        ],
      ).show();


      matasquita.restart();
      scoreKeeper.clear();
      setState(() {

      });


    } else {
      bool correctAnswer = matasquita.getQuestionAnswer();
      if (correctAnswer == userAnswer) {
        scoreKeeper.add(
          Icon(
            Icons.check,
            color: Color(0xff00E1B7),
          ),
        );
      } else {
        scoreKeeper.add(
          Icon(
            Icons.close,
            color: Color(0xfff84073),
          ),
        );
      }
      matasquita.nextQuestion();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff272C2F),
      appBar: AppBar(
        backgroundColor: Color(0xff272C2F),
        title: const Text("QuizApp"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                matasquita.getQuestionText(),
                textAlign: TextAlign.center,
                style: const TextStyle(
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
                onPressed: () {
                  checkAnswer(true);
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                color: const Color(0xfff84073),
                child: const Text("False"),
                onPressed: () {
                  checkAnswer(false);
                },
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          ),
        ],
      ),
    );
  }
}
