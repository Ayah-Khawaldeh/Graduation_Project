import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project1/screens/test.dart';

import '../data.dart';

class Cards extends StatelessWidget {
  Cards({required this.animal, required this.onPressed});
  final AnimalInfo animal;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: 200,
        // height: 230,
        // color: Colors.red,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 45,
              child: Container(
                decoration: BoxDecoration(
                  color: animal.color,
                  borderRadius: BorderRadius.circular(10),
                ),
                constraints: BoxConstraints(maxHeight: 330, maxWidth: 330),
              ),
            ),
            Positioned(
              top: 25,
              child: Hero(
                tag: animal.name,
                transitionOnUserGestures: true,
                child: Image.asset(
                  animal.iconImage,
                  height: 150,
                  width: 150,
                ),
              ),
            ),
            Positioned(
              child: Text(
                animal.name,
                style: TextStyle(
                    color: Colors.amberAccent[900],
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 10,
              left: 160,
              child: Container(
                width: 200,
                height: 200,
                child: Opacity(
                  opacity: 0.8,
                  child: Center(
                    child: Text(
                      animal.description,
                      style: TextStyle(
                          wordSpacing: 4,
                          //  fontFamily:"" ,
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
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
