import 'package:flutter/material.dart';
import 'package:task_3/screens/all_questions.dart';
import 'package:task_3/screens/home_screen.dart';

import '../components/a_question.dart';

class QuestionFive extends StatefulWidget{
  @override
  State<QuestionFive> createState() => _QuestionFiveState();
}

class _QuestionFiveState extends State<QuestionFive> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 132, 87, 155),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(icon:Icon(Icons.arrow_back, size: 30,),style: TextButton.styleFrom(backgroundColor:Color.fromARGB(255, 132, 87, 155), primary: Colors.white ), onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>AllQuestions())); }, label: Text(' '),),
              TextButton.icon(icon:Icon(Icons.home, size: 30,),style: TextButton.styleFrom(backgroundColor:Color.fromARGB(255, 132, 87, 155), primary: Colors.white ), onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())); }, label: Text(' '),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text('Question 5', style: TextStyle(fontSize: 40,color: Colors.white),),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset('assets/chandler.jpg',height: 200),
          ),
          AQuestion(question: 'What is Chandler’s middle name?', choice1: 'Muriel', choice2: 'Nora',choice3: 'Charles',choice4: 'Francis',)],
      ),
    ); 
  }
}