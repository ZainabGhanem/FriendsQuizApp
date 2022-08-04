import 'package:flutter/material.dart';
import 'package:task_3/screens/home_screen.dart';
class AppRoot extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),);
  }
}