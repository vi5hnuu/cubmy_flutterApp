import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget{
  final int index;
  final VoidCallback sHandler;
  Quiz({required this.index,required this.sHandler});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(questionText: questions[index]['questionText'] as String),//Question is staleless but updated coz input to ctor changed
        SizedBox(height: 80,),
        Column(
          children: [
            for(int i=0;i<(questions[index]['options'] as List<String>).length;i++)
              Answer(selectHandler: sHandler, answerText: (questions[index]['options'] as List<String>)[i],qIndex:index,),
          ],
        )
      ],
    );
  }
}