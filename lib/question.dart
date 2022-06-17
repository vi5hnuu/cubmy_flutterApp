import 'package:flutter/material.dart';


const questions=const[
  {'questionText':'What is the full form of oop','options':['Object oriented programming','Oriented object programming','Office oriented programming','office objective programming'
  ],'answer':'Object oriented programming'},
  {'questionText':'Which operator has highest precedence?','options':['()','=','*','++'],'answer':'()'},
  {'questionText':'Which operator has highest precedence?','options':['*','/','%','all have same precedence'],'answer':'all have same precedence'},
  {'questionText':'Can we overload functions in C++?','options':['Yes','No','Compilation Error','Runtime Error'],'answer':'Yes'},
  {'questionText':'Can we typecast void * into int *?','options':['Yes','No','Undefined','Depends on Compiler'],'answer':'Yes'},
  {'questionText':'Which operator can not be overloaded?','options':['+','-','*','::'],'answer':'::'},
  {'questionText':'What is size of int data type in cpp?','options':['2 Bytes','4 Bytes','1 Bytes','Depends on Compiler'],'answer':'Depends on Compiler'},
  {'questionText':'What following operator is called?:','options':['Scope Resolution Operator','Conditional Operator','Ternary Operator','if else o/p'],'answer':'Ternary Operator'},
  {'questionText':'Can we assign null to void pointer?','options':['Yes','No'],'answer':'Yes'},
  {'questionText':'Can a class contain another class in it ?','options':['Yes','No'],'answer':'Yes'},
  {'questionText':'What is the size of empty class?','options':['0','1','2','4'],'answer':'1'},
  {'questionText':'What is size of void in C++?','options':['2 Bytes','4 Bytes','Undefined','0'],'answer':'0'},
  {'questionText':'Can any function call itself?','options':['Yes','No','Compilation Error','Runtime Error'],'answer':'Yes'},
  {'questionText':'Can a Structure contain pointer to itself?','options':['Yes','No','Compilation Error','Runtime Error'],'answer':'Yes'},
  {'questionText':'Can this pointer point to another class?','options':['Yes','No'],'answer':'No'},
];
final int TOTAL_QUESTIONS=questions.length;
/*
* The below class is not changinf internally but is change only through constructor
* Thats why a statelsss widget has all fields final
* */
class Question extends StatelessWidget{
  final String questionText;
  Question({required this.questionText});
  @override
  Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        margin:EdgeInsets.only(left: 20,right: 20),
        child: Text(
            questionText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white
            )
        ),
      );
  }
}