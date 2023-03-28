import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project1/screens/home.dart';
import 'package:project1/screens/profile.dart';
import 'package:fluttermoji/fluttermoji.dart';
import 'package:project1/screens/registration.dart';
import 'dart:math';
import 'package:project1/screens/settings.dart';
import 'avatar.dart';
import 'savatar.dart';

class savatar extends StatefulWidget {
  savatar({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<savatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCED0CC),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: <Widget>[
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "wow",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          FluttermojiCircleAvatar(
            backgroundColor: Colors.blueGrey,
            radius: 100,
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "lets go",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const Spacer(flex: 2),
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: 35,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.edit),
                    label: const Text(
                      "Learn",
                    ),
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => home())),
                  ),
                ),
              ),
              //      SizedBox(
              //   height: 25,
              // ),

              const Spacer(flex: 2),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const Spacer(flex: 2),
              Expanded(
                flex: 3,
                child: Container(
                  color: const Color(0xFF9BB491),
                  height: 35,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.edit),
                    label: const Text("Edit"),
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const NewPage())),
                  ),
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
