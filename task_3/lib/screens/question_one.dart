import 'package:flutter/material.dart';
import 'package:task_3/components/a_question.dart';
import 'package:task_3/screens/all_questions.dart';
import 'package:task_3/screens/home_screen.dart';
import 'package:task_3/screens/question_two.dart';


class QuestionOne extends StatefulWidget{
  
  @override
  State<QuestionOne> createState() => _QuestionOneState();
  
}

class _QuestionOneState extends State<QuestionOne> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 132, 87, 155),
      body:Column(
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
            child: Text('Question 1', style: TextStyle(fontSize: 40,color: Colors.white),),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset('assets/theEuropeStory.webp',height: 200,),
          ),
          AQuestion(question: 'How many pages were in the letter Rachel wrote to Ross (front and back!)?', choice1: 'Twelve', choice2: 'Eight',choice3: 'Three',choice4: 'Eighteen',),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 60,
                  width: 100,
                  child: TextButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionTwo())); },
                  child: Text('Next',style: TextStyle(fontSize: 17), ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 132, 87, 155),
                    primary: Colors.yellow,
                    side: BorderSide(color: Colors.yellow,width: 5),
                  ),
                  ),
                )
              ],
            ),
          )
          ],
      ),
    ); 
  }
}