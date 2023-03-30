import 'package:flutter/material.dart';
import 'package:project1/screens/dashbord.dart';
import 'package:project1/screens/login.dart';
import 'package:project1/screens/profile.dart';
import 'package:ionicons/ionicons.dart';
import 'package:project1/screens/quiz.dart';
import 'package:project1/screens/test.dart';
import 'package:project1/widgets/settingw.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCED0CC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Text(
                "Settings",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              SettingsTile(
                color: Colors.blue,
                icon: Ionicons.person_circle_outline,
                title: "Account",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => profile()),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              SettingsTile(
                color: Colors.green,
                icon: Ionicons.pencil_outline,
                title: "Edit Information",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LearningScreen()),
                  );
                },
              ),
              const SizedBox(
                height: 40,
              ),
              SettingsTile(
                color: Colors.black,
                icon: Ionicons.moon_outline,
                title: "Theme",
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              SettingsTile(
                color: Colors.blueGrey,
                icon: Ionicons.analytics_sharp,
                title: "Dashbord",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => dashbord()),
                  );
                },
              ),
              const SizedBox(
                height: 40,
              ),
              SettingsTile(
                color: Colors.purple,
                icon: Ionicons.language_outline,
                title: "Language",
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              SettingsTile(
                color: Colors.red,
                icon: Ionicons.log_out_outline,
                title: "Logout",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => login()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
