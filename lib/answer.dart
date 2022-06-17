
import 'package:cubmy/question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final VoidCallback selectHandler;
  final String answerText;
  final int qIndex;
  static int score=0;
  Answer({required this.selectHandler,required this.answerText,required this.qIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
       child: Text(answerText),
       onPressed: (){
         if(questions[qIndex]['answer']==answerText)
           score++;
         selectHandler();
       },
        style: ElevatedButton.styleFrom(
          primary: Colors.blueGrey,
          minimumSize: Size(400, 50),
            elevation: 5,
        ),
        ),
    );
  }
}