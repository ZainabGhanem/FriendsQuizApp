import 'package:flutter/material.dart';
import 'package:task_3/screens/all_questions.dart';
import 'package:task_3/screens/question_three.dart';
import '../components/a_question.dart';
import 'home_screen.dart';

class QuestionTwo extends StatefulWidget{
  @override
  State<QuestionTwo> createState() => _QuestionTwoState();
}

class _QuestionTwoState extends State<QuestionTwo> {
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
            child: Text('Question 2', style: TextStyle(fontSize: 40,color: Colors.white),),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset('assets/phoebeBuffay.jpg',height: 200),
          ),
          AQuestion(question: 'What was the name that Phoebe chose for herself?', choice1: 'Regina Phalange', choice2: 'Scarlet Nelson',choice3: 'Regina George',choice4: 'Monana Wilson',),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 60,
                  width: 100,
                  child: TextButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionThree())); },
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