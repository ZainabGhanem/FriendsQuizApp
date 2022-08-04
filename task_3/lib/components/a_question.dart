import 'package:flutter/material.dart';

class AQuestion extends StatefulWidget {
  const AQuestion(
      {super.key,
      required this.question , required this.choice1, required this.choice2, required this.choice3, required this.choice4});

  @override
  State<AQuestion> createState() => _AQuestionState();
  final String question;
  final String choice1;
  final String choice2;
  final String choice3;
  final String choice4;
}

class _AQuestionState extends State<AQuestion> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
         Center(
            child: Container(
              decoration: BoxDecoration(color: Colors.yellow),
              height: 100,
              width: 380,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Text(
                    widget.question,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple),
                  )),
                ],
              ),
            ),
          ),
        
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(color: Colors.yellow),
                height: 55,
                width: 180,
                child: Row(
                  children: [
                    Expanded(child: Text(widget.choice1,style: TextStyle(
                          fontSize: 17.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple) ))
                  ],
                ),
              ),
            ),
            
            Container(
              decoration: BoxDecoration(color: Colors.yellow),
              height: 55,
              width: 180,
              child: Row(
                children: [
                  Expanded(child: Text(widget.choice2,style: TextStyle(
                        fontSize: 17.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple) ))
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(color: Colors.yellow),
                height: 55,
                width: 180,
                child: Row(
                  children: [
                    Expanded(child: Text(widget.choice3,style: TextStyle(
                          fontSize: 17.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple) )
                    )
                  ],
                ),
              ),
            ),
            
            Container(
              decoration: BoxDecoration(color: Colors.yellow),
              height: 55,
              width: 180,
              child: Row(
                children: [
                  Expanded(child:Text(widget.choice4,style: TextStyle(
                        fontSize: 17.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple) )
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
