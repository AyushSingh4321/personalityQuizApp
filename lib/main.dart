import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(AyushApp());

class AyushApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AyushAppState();
  }
}

class _AyushAppState extends State<AyushApp> {
  final _questions = const [
    //It is a list
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Tiger', 'score': 10},
        {'text': 'Lion', 'score': 7},
        {'text': 'Cat', 'score': 4},
        {'text': 'Dog', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s your favourite place?',
      'answers': [
        {'text': 'Home', 'score': 10},
        {'text': 'Work', 'score': 5},
        {'text': 'Temple', 'score': 9},
        {'text': 'Party', 'score': 1},
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override // OPTIONAL
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.blue,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
