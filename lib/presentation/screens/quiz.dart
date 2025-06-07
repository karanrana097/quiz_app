import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/screens/home_screen.dart';
import 'package:quiz_app/presentation/screens/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget?  activeScreen;

  @override
  void initState(){
    activeScreen = HomeScreen(startQuiz: switchScreen);
    super.initState();

  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen();
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),

      ),
    );
  }
}

