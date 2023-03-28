// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:project1/screens/single.dart';
// import 'package:project1/screens/sub.dart';
import 'package:project1/screens/cat.dart';
import 'package:project1/screens/subCat.dart';

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
          MaterialPageRoute(builder: (context) => cat()),
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
          MaterialPageRoute(builder: (context) => single()),
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
