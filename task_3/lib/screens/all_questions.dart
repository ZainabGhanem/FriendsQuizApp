import 'package:flutter/material.dart';
import 'package:task_3/components/question_num_card.dart';
import 'package:task_3/screens/home_screen.dart';

class AllQuestions extends StatefulWidget{
  @override
  State<AllQuestions> createState()=>_AllQuestions() ;
}
class _AllQuestions extends State<AllQuestions>{
  @override
  Widget build(BuildContext context){
   return 
        Scaffold(
          backgroundColor: Color.fromARGB(255, 132, 87, 155),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [Row(
              children: [
                TextButton.icon(icon:Icon(Icons.arrow_back, size: 30,),style: TextButton.styleFrom(backgroundColor:Color.fromARGB(255, 132, 87, 155), primary: Colors.white ), onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())); }, label: Text(' '),),
              ]
            ),
            Text('Questions',style: TextStyle(fontSize: 35,color: Colors.white) ),
            QuestionNumCard(num:'1'),
            QuestionNumCard(num:'2'),
            QuestionNumCard(num:'3'),
            QuestionNumCard(num:'4'),
            QuestionNumCard(num:'5'),
            
            ]
          ),
        )
    );
    
  }
}
