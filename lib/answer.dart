import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback SelectHandler;
  final String answerText;
  Answer(this.SelectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:  MaterialStateProperty.all(Colors.blue)
        ),
        onPressed: SelectHandler,             //method 1
        child: Text(answerText),
      )
    );
  }
}
