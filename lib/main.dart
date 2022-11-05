import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'BLACK', 'score': 10},
        {'text': 'RED', 'score': 6},
        {'text': 'WHITE', 'score': 1},
        {'text': 'GREEN', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'RABBIT', 'score': 3},
        {'text': 'SNAKE', 'score': 11},
        {'text': 'LION', 'score': 8},
        {'text': 'TIGER', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favourite instructor?',
      'answers': [
        {'text': 'MAX', 'score': 1},
        {'text': 'MAX', 'score': 1},
        {'text': 'MAX', 'score': 1},
        {'text': 'MAX', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  void _answerquestion(int score) {

    _totalScore+=score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We even have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('excited achintya!'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerquestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
