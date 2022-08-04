import 'package:flutter/material.dart';
import 'package:task_3/screens/question_five.dart';
import 'package:task_3/screens/question_four.dart';
import 'package:task_3/screens/question_one.dart';
import 'package:task_3/screens/question_three.dart';
import 'package:task_3/screens/question_two.dart';

class QuestionNumCard extends StatefulWidget{
  
  @override
  State<QuestionNumCard> createState() => _QuestionNumCardState();
  final String num;

  const QuestionNumCard({required this.num});
}

class _QuestionNumCardState extends State<QuestionNumCard> {
  void initState(){
    super.initState();
  }
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 252, 236, 98), borderRadius: BorderRadius.circular(15)),
        width: 200,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              if(widget.num=='1'){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionOne()));
              }else if(widget.num=='2'){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionTwo()));
              }else if(widget.num=='3'){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionThree()));
              }else if(widget.num=='4'){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionFour()));
              }else if(widget.num=='5'){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionFive()));
              }
            ;},
            child: Text('Question'+' '+ widget.num, style: TextStyle(color: Colors.purple,fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}