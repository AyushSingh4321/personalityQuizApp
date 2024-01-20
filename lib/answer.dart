import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final Function selectHandler;  ----- gives error....
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
        //test
        child: Text(answerText ,style: TextStyle(fontSize: 15),),
        onPressed: selectHandler,
      ),
    );
  }
}
