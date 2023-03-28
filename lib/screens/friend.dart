import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class friend extends StatelessWidget {
  const friend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFCED0CC),
        body: Center(
          child: Text("HI Friend"),
        ));
  }
}
