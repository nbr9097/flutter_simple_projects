import 'dart:math';
import 'package:flutter/material.dart';
import 'word_list.dart';
import 'dart:async';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  String _currentWord = '';
  int timeLeft = 60;
  late Timer _gameTimer;
  int _score = 0;
  final TextEditingController _textController = TextEditingController();
  final FocusNode _textFocusNode = FocusNode();
  int wordCount = 0;
  double wpm = 0;

  @override
  void initState() {
    super.initState();
    _getRandomWord();
    _startGameTimer();

    Future.delayed(Duration(milliseconds: 100), () {
      FocusScope.of(context).requestFocus(_textFocusNode);
    });
  }

  void _startGameTimer() {
    _gameTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (timeLeft > 0) {
          timeLeft--;
        } else {
          _gameTimer.cancel();
          _showResultDialog();
        }
      });
    });
  }

  void _getRandomWord() {
    final Random random = Random();
    setState(() {
      _currentWord = wordList[random.nextInt(wordList.length)];
      wordCount++;
    });
  }

  void _handleTextInput(String value) {
    if (value.endsWith(' ')) {
      final typeWord = value.trim();
      if (typeWord == _currentWord) {
        setState(() {
          _score++;
        });
      }
      _textController.clear();
      _getRandomWord();
    }
  }

  void _showResultDialog() {
    setState(() {
      wpm = (_score / 1) * (_score / wordCount);
    });
    _textFocusNode.unfocus();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Results:',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20),
          ),
          content: Text(
            'Total Words Attended : $wordCount\n Corrected Words : $_score\n WPM : ${wpm.toStringAsFixed(2)}',
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _gameTimer.cancel();
    super.dispose();
    _textFocusNode.dispose();
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text('Game started')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Timer:$timeLeft', style: TextStyle(fontSize: 20)),
                Text('Score:$_score', style: TextStyle(fontSize: 20)),
              ],
            ),
            SizedBox(height: 150.0),
            Text(_currentWord, style: TextStyle(fontSize: 35.0)),
            SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter the above word and Enter Space",
                hintStyle: TextStyle(color: Colors.grey),
              ),
              focusNode: _textFocusNode,
              controller: _textController,
              autocorrect: false,
              onChanged: _handleTextInput,
            ),
          ],
        ),
      ),
    );
  }
}
