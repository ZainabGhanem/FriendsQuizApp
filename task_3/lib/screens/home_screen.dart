import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_3/screens/all_questions.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 132, 87, 155),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(35),
            child: Image.asset('assets/monicaDoorFrame.jpg', height: 300,width: 250,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('F.R.I.E.N.D.S', style: TextStyle(color: Colors.white, fontSize: 50,fontFamily: 'GABRWFFR'),),
            ],
          ),
          Text('Quiz', style: TextStyle(color: Colors.white, fontSize: 40),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Let\'s Play !', style: TextStyle(fontSize: 25, color: Colors.yellow),),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child:TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AllQuestions()));},
                child: Text('Play Now'),
                style:TextButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  textStyle: TextStyle(fontSize: 40,),
                  primary: Colors.purple,
                  side: BorderSide(width: 2),
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(7))
                )
                ),
          )
        ],
      ),
    );
  } 
}