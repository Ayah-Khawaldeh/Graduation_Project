import 'package:flutter/material.dart';

class LearningScreen extends StatefulWidget {
  @override
  _LearningScreenState createState() => _LearningScreenState();
}

class _LearningScreenState extends State<LearningScreen> {
  final List<String> topics = [
    'Alphabet',
    'Numbers',
    'Shapes',
    'Colors',
  ];

  String selectedTopic = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn'),
        backgroundColor: Color(0xFF9BB491),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select a topic to learn:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: topics.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTopic = topics[index];
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: selectedTopic == topics[index]
                            ? Color(0xFF9BB491)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Text(
                        topics[index],
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: selectedTopic == topics[index]
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),
            if (selectedTopic != '')
              Expanded(
                child: Center(
                  child: Text(
                    'You selected $selectedTopic',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
