import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'quiz.dart';
import 'result.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  int _counter=0;
  void restartQuiz(){
    setState(() {
      _counter=0;
    });
  }
  void _answerQuestion(){
    setState(() {
        _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Can You Be My Friend😍",
      home:Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          shadowColor: Colors.black87,
          backgroundColor: Colors.blueGrey,
          title: Text('😍QUIZ😍'.toUpperCase()),
          centerTitle: true,
        ),
        body: (_counter<TOTAL_QUESTIONS) ? Quiz(index: _counter,sHandler:_answerQuestion) : Result(restartQuizFun: restartQuiz,),
      ),
    );
  }
}