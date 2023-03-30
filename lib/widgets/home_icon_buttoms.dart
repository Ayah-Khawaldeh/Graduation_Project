// import 'dart:js_util';

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:project1/screens/single.dart';
// import 'package:project1/screens/sub.dart';
import 'package:project1/screens/cat.dart';
import 'package:project1/screens/subCat.dart';

import '../screens/Learn.dart';
import '../screens/feel.dart';
import '../screens/game1.dart';
import '../screens/music.dart';
import '../screens/music1.dart';
import '../screens/play.dart';
import '../screens/quiz.dart';
import '../screens/stories.dart';
import '../screens/sub.dart';
import '../screens/videos.dart';
import '../screens/want.dart';

class Catigorys extends StatelessWidget {
  String image;
  String text;
  Color color;

  Catigorys({required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 140,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0x9F3D416E),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 80,
              height: 80,
              // alignment: Alignment.center,
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => single()),
        );
      },
    );
  }
}

class Catigory extends StatelessWidget {
  String image;
  String text;
  Color color;

  Catigory({required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 110,
        width: 155,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0x9F3D416E),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 70,
              height: 70,
              // alignment: Alignment.center,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => cat()),
        );
      },
    );
  }
}

class Catigorycat extends StatelessWidget {
  String image;
  String text;
  Color color;

  Catigorycat({required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0x9F3D416E),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 50,
              height: 50,
              // alignment: Alignment.center,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 16.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => subCat()),
        );
      },
    );
  }
}

class Catigoryscat extends StatelessWidget {
  String image;
  String text;
  Color color;

  Catigoryscat({required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0x9F3D416E),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 50,
              height: 50,
              // alignment: Alignment.center,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => subCat()),
        );
      },
    );
  }
}

class CatigorySub extends StatelessWidget {
  String image;
  String text;
  Color color;

  CatigorySub({required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 150,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0x9F3D416E),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 90,
              height: 90,
              // alignment: Alignment.center,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Learn()),
        );
      },
    );
  }
}

class CatigorySingle extends StatelessWidget {
  String image;
  String text;
  Color color;

  CatigorySingle(
      {required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 400,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0x9F3D416E),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 300,
              height: 300,
              // alignment: Alignment.center,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => single()),
        );
      },
    );
  }
}

class Catigorytest extends StatelessWidget {
  String image;
  String text;
  Color color;

  Catigorytest({required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0x9F3D416E),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 50,
              height: 50,
              // alignment: Alignment.center,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Quiz()),
        );
      },
    );
  }
}

class Catigoryplay extends StatelessWidget {
  String image;
  String text;
  Color color;

  Catigoryplay({required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 110,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0x9F3D416E),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 70,
              height: 70,
              // alignment: Alignment.center,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Play()),
        );
      },
    );
  }
}

class Catigorywant extends StatelessWidget {
  String image;
  String text;
  Color color;

  Catigorywant({required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 140,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0x9F3D416E),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 80,
              height: 80,
              // alignment: Alignment.center,
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Want()),
        );
      },
    );
  }
}

class Catigoryfeel extends StatelessWidget {
  String image;
  String text;
  Color color;

  Catigoryfeel({required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 140,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0x9F3D416E),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 80,
              height: 80,
              // alignment: Alignment.center,
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Feel()),
        );
      },
    );
  }
}

class Catigorystories extends StatelessWidget {
  String image;
  String text;
  Color color;

  Catigorystories(
      {required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 110,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0x9F3D416E),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 70,
              height: 70,
              // alignment: Alignment.center,
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Stories()),
        );
      },
    );
  }
}

class Catigoryvideos extends StatelessWidget {
  String image;
  String text;
  Color color;

  Catigoryvideos(
      {required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 110,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0x9F3D416E),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 70,
              height: 70,
              // alignment: Alignment.center,
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Videos()),
        );
      },
    );
  }
}

class Catigorymusic extends StatelessWidget {
  String image;
  String text;
  Color color;

  Catigorymusic({required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 110,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0x9F3D416E),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 70,
              height: 70,
              // alignment: Alignment.center,
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Music()),
        );
      },
    );
  }
}

class Catigorysp extends StatelessWidget {
  String image;
  String text;
  Color color;

  Catigorysp({required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 140,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0x9F3D416E),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 80,
              height: 80,
              // alignment: Alignment.center,
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Game1()),
        );
      },
    );
  }
}

class Catigorysq extends StatelessWidget {
  String image;
  String text;
  Color color;

  Catigorysq({required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 140,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0x9F3D416E),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 80,
              height: 80,
              // alignment: Alignment.center,
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Quiz()),
        );
      },
    );
  }
}

class Catigorysm extends StatelessWidget {
  String image;
  String text;
  Color color;

  Catigorysm({required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 140,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0x9F3D416E),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 80,
              height: 80,
              // alignment: Alignment.center,
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Music1()),
        );
      },
    );
  }
}
