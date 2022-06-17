import 'package:cubmy/answer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  VoidCallback restartQuizFun;
  Result({required this.restartQuizFun});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text(
            "score :${Answer.score}",
            style: TextStyle(
              fontSize: 50,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){
            Answer.score=0;
            restartQuizFun();
          },
          child: Icon(Icons.restart_alt_outlined,size: 75,color: Colors.grey,),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(100,100),
            primary: Colors.black12,
            elevation: 5,
            shape: CircleBorder()
          ),
          )
        ],
      ),
    );
  }
}