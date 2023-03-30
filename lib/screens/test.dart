import 'dart:async';

import 'package:flutter/material.dart';

class Play extends StatefulWidget {
  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {
  int _score = 0;
  bool _isPlaying = false;
  int _timerValue = 30;

  void _startPlaying() {
    setState(() {
      _isPlaying = true;
      _score = 0;
      _timerValue = 30;
    });
    _startTimer();
  }

  void _stopPlaying() {
    setState(() {
      _isPlaying = false;
    });
  }

  void _startTimer() {
    const oneSec = const Duration(seconds: 1);
    Timer.periodic(
      oneSec,
      (Timer timer) {
        setState(() {
          if (_timerValue < 1) {
            timer.cancel();
            _stopPlaying();
          } else {
            _timerValue -= 1;
          }
        });
      },
    );
  }

  void _incrementScore() {
    setState(() {
      _score += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCED0CC),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _isPlaying
                ? Text(
                    '$_timerValue seconds left!',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : Text(
                    'Press the button to start playing!',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
            SizedBox(height: 20.0),
            Text(
              'Score: $_score',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            _isPlaying
                ? ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Color(0xFF9BB491),
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(20)),
                        padding:
                            EdgeInsets.all(15) //content padding inside button
                        ),
                    onPressed: _incrementScore,
                    child: Text(
                      'Tap me!',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Color(0xFF9BB491),
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(20)),
                        padding:
                            EdgeInsets.all(15) //content padding inside button
                        ),
                    onPressed: _startPlaying,
                    child: Text(
                      'Start playing!',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
