import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/utils/app_colors.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz App',
          style: TextStyle(color: const Color.fromARGB(255, 237, 237, 237)),
        ),
        backgroundColor: const Color.fromARGB(255, 44, 13, 73),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors().primaryColor,
              AppColors().secondaryColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 100),
            Opacity(
              opacity: 0.5,
              child: Image.asset('assets/images/quiz-logo.png', width: 300),
            ),
            SizedBox(height: 60),
            Text(
              'Lets begin the Quiz',
              style: GoogleFonts.rubikBurned(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 237, 237, 237),
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(fixedSize: Size(250, 20)),
              onPressed: startQuiz,
              label: Text(
                'Start',
                style: GoogleFonts.rubikBurned(
                  fontSize: 25,
                  color: const Color.fromARGB(255, 237, 237, 237),
                ),
              ),
              icon: Icon(
                CupertinoIcons.arrow_right,
                color: const Color.fromARGB(255, 237, 237, 237),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
