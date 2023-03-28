import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project1/screens/profile.dart';
import 'package:fluttermoji/fluttermoji.dart';
import 'package:project1/screens/registration.dart';
import 'package:project1/screens/savatar.dart';
import 'dart:math';

import 'package:project1/screens/settings.dart';

import 'home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttermoji Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      home: avatar(title: 'Fluttermoji'),
    );
  }
}

class avatar extends StatefulWidget {
  avatar({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<avatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCED0CC),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Use your Fluttermoji anywhere\nwith the below widget",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          FluttermojiCircleAvatar(
            backgroundColor: Colors.blueGrey,
            radius: 100,
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "and create your own page to customize them using our widgets",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              // background:Color(0xFF9BB491),

              Spacer(flex: 2),
              Expanded(
                flex: 3,
                child: Container(
                  color: Color(0xFF9BB491),
                  height: 35,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.edit),
                    label: Text("Customize"),
                    onPressed: () => Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => NewPage())),
                  ),
                ),
              ),
              Spacer(flex: 2),
            ],
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFCED0CC),
      bottomNavigationBar: Container(
        height: 80,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        color: Color(0xFF9BB491),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(20),
        //   // color: Color(0x9F3D416E),
        // ),
        // Color(0xFFFFB6C1),

        // Color(0xFFE3CE82),
        // Color(0xFF9BB491),
        // // Color(0xFFCED0CC),
        // Color(0xFF9DC7DF),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.language),
                tooltip: 'language Icon',
                onPressed: () {
                  // return login();
                  // print("acount");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const registration()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.home),
                tooltip: 'Home Icon',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const home()),
                  );
                },
              ),

              //IconButton
              IconButton(
                icon: const Icon(Icons.settings),
                tooltip: 'Setting Icon',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const settings()),
                  );
                },
              ),

              IconButton(
                icon: FluttermojiCircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  radius: 100,
                ),
                tooltip: ' Account Icon',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => profile()),
                  );
                },
              ),
              //IconButton
            ],
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: FluttermojiCircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.blueGrey,
                ),
              ),
              SizedBox(
                width: min(600, _width * 0.85),
                child: Row(
                  children: [
                    Text(
                      "Customize:",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Spacer(),
                    FluttermojiSaveWidget(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => savatar()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30),
                child: FluttermojiCustomizer(
                  scaffoldWidth: min(600, _width * 0.85),
                  autosave: false,
                  theme: FluttermojiThemeData(
                    boxDecoration: BoxDecoration(
                      boxShadow: [BoxShadow()],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
