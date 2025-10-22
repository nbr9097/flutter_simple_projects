import 'package:flutter/material.dart';
import 'game_screen.dart';
class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text("WordSprint"), backgroundColor: const Color.fromARGB(255, 205, 68, 229)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('WordSprint', style: TextStyle(fontSize: 35)),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GameScreen()),
                  );
                },
                child: Text("Start", style: TextStyle(fontSize: 25)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
