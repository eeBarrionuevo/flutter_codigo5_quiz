
import 'package:flutter_codigo5_quiz/question.dart';

class QuizBrain{

  List<Question> _questions = [
    Question(questionText: "El hombre llegó a luna?", questionAnswer: true),
    Question(questionText: "El mar es azul", questionAnswer: false),
    Question(questionText: "Desayunaron?", questionAnswer: false),
    Question(questionText: "Van a almorzar?", questionAnswer: true),
    Question(questionText: "Hace frio?", questionAnswer: true),
  ];

  int questionNumber = 0;

  String getQuestionText(){
    return _questions[questionNumber].questionText;
  }

  bool getQuestionAnswer(){
    return _questions[questionNumber].questionAnswer;
  }

  void nextQuestion(){
    questionNumber++;
  }


}