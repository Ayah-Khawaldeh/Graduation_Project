import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> questions = [
    'What color is an apple?',
    'What animal says "meow"?',
    'What is the opposite of hot?',
    'What shape is a stop sign?',
  ];

  final List<List<String>> choices = [
    ['Red', 'Green', 'Blue', 'Yellow'],
    ['Dog', 'Cat', 'Bird', 'Fish'],
    ['Cold', 'Warm', 'Icy', 'Freezing'],
    ['Circle', 'Triangle', 'Octagon', 'Square'],
  ];

  final List<int> answers = [0, 1, 0, 3];

  int currentQuestion = 0;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCED0CC),
      appBar: AppBar(
        title: Text('QUIZ'),
        backgroundColor: Color(0xFF9BB491),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 7.0),
            Text(
              questions[currentQuestion],
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            // SizedBox(height: 7.0),
            ...choices[currentQuestion].asMap().entries.map((entry) {
              int index = entry.key;
              String choice = entry.value;
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Color(0xFF9BB491),
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.all(15) //content padding inside button
                    ),
                onPressed: () {
                  setState(() {
                    if (index == answers[currentQuestion]) {
                      score++;
                    }
                    if (currentQuestion < questions.length - 1) {
                      currentQuestion++;
                    } else {
                      Navigator.pushReplacementNamed(context, '/result');
                    }
                  });
                },
                child: Text(choice),
              );
            }).toList(),
            // SizedBox(height: 7.0),

            Text(
              'Question ${currentQuestion + 1}/${questions.length}',
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Score: $score/${questions.length}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
