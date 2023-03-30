import 'package:flutter/material.dart';

class Music1 extends StatelessWidget {
  const Music1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Player'),
        backgroundColor: Color(0xFF9BB491),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://picsum.photos/300',
              height: 250,
              width: 250,
              fit: BoxFit.cover,
            ),
            Text(
              'Song Title',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Artist Name',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('0:00'),
                Expanded(
                  child: Slider(
                    activeColor: Color(0xFF9BB491),
                    inactiveColor: Color(0xFFCED0CC),
                    value: 0.5,
                    onChanged: (value) {
                      // Update the slider value
                    },
                  ),
                ),
                Text('3:45'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.skip_previous),
                  onPressed: () {
                    // Handle skip previous button press
                  },
                ),
                IconButton(
                  icon: Icon(Icons.play_arrow),
                  onPressed: () {
                    // Handle play button press
                  },
                ),
                IconButton(
                  icon: Icon(Icons.skip_next),
                  onPressed: () {
                    // Handle skip next button press
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
