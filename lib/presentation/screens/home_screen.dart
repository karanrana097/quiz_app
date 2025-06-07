import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final void Function()? startQuiz;
  const HomeScreen({this.startQuiz, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Opacity(
                opacity: 0.6,
                child: Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 300,
                  opacity: const AlwaysStoppedAnimation(.6),
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 80),
              Text(
                'Learn Flutter the fun way!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: startQuiz,
                icon: Icon(Icons.arrow_right_alt),
                label: Text('Start Quiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
