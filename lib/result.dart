import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) {
      resultText = 'You are bad';
    } else if (resultScore <= 12) {
      resultText = 'You are..... strange?.';
    } else if (resultScore <= 18) {
      resultText = 'You are normal';
    } else if (resultScore <= 100) {
      resultText = 'You are awesome';
    } else {
      resultText = 'You are God Like!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Restart Quiz!',
              style: TextStyle(fontSize: 15),
            ),
            onPressed: resetHandler,
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
