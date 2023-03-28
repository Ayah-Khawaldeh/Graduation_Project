import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:project1/screens/dashbord.dart';
import 'package:project1/screens/login.dart';
import 'package:project1/screens/profile.dart';
import 'package:project1/screens/settings.dart';
import 'package:project1/screens/signup.dart';
import 'package:project1/screens/single.dart';

import 'home.dart';
import 'registration.dart';

// class settings extends StatelessWidget {
//   const settings({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFCED0CC),
//       bottomNavigationBar: Container(
//         height: 80,
//         width: double.infinity,
//         padding: EdgeInsets.all(10),
//         color: Color(0xFF9DC7DF),
//         // decoration: BoxDecoration(
//         //   borderRadius: BorderRadius.circular(20),
//         //   // color: Color(0x9F3D416E),
//         // ),
//         // Color(0xFFFFB6C1),

//         // Color(0xFFE3CE82),
//         // Color(0xFF9BB491),
//         // // Color(0xFFCED0CC),
//         // Color(0xFF9DC7DF),
//         child: Padding(
//           padding: const EdgeInsets.only(bottom: 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               IconButton(
//                 icon: const Icon(Icons.language),
//                 tooltip: 'language Icon',
//                 onPressed: () {
//                   // return login();
//                   // print("acount");
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const registration()),
//                   );
//                 },
//               ),
//               IconButton(
//                 icon: const Icon(Icons.home),
//                 tooltip: 'Home Icon',
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const home()),
//                   );
//                 },
//               ),

//               //IconButton
//               IconButton(
//                 icon: const Icon(Icons.settings),
//                 tooltip: 'Setting Icon',
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const settings()),
//                   );
//                 },
//               ),

//               IconButton(
//                 icon: const Icon(Icons.account_circle_rounded),
//                 tooltip: ' Account Icon',
//                 onPressed: () {
//                   // return login();
//                   // print("acount");
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => profile()),
//                   );
//                 },
//               ),
//               //IconButton
//             ],
//           ),
//         ),
//       ),
//       body: Container(
//         child: SingleChildScrollView(
//           child: Container(
//             child: Column(
//               children: [
//                 Stack(
//                   children: [
//                     Transform.rotate(
//                       origin: Offset(30, -60),
//                       angle: 2.4,
//                       child: Container(
//                         margin: EdgeInsets.only(
//                           left: 75,
//                           top: 40,
//                         ),
//                         height: 400,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(80),
//                           gradient: LinearGradient(
//                             begin: Alignment.bottomLeft,
//                             colors: [
//                               // Color(0xFFFFB6C1),

//                               Color(0xFFE3CE82),
//                               Color(0xFF9DC7DF),
//                               // // Color(0xFFCED0CC),
//                               // Color(0xFF9DC7DF),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 20, vertical: 90),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             'HI setting',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 26,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Container(
//                             child: Text(
//                               "Let's go choose category:",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 100,
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(top: 15),
//                             child: Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     // CatigorySingle(
//                                     //   image:
//                                     //       'assets/images/registration/splash.png',
//                                     //   text: 'Want',
//                                     //   color: Color(0xFF47B4FF),
//                                     // ),
//                                     // Catigory(
//                                     //   image:
//                                     //       'assets/images/registration/splash.png',
//                                     //   text: 'Feel',
//                                     //   color: Color(0xFFA885FF),
//                                     // )
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 15,
//                                 ),
//                                 // Row(
//                                 //   mainAxisAlignment:
//                                 //       MainAxisAlignment.spaceEvenly,
//                                 //   children: [
//                                 //     Catigory(
//                                 //       image:
//                                 //           'assets/images/registration/splash.png',
//                                 //       text: 'Learn',
//                                 //       color: Color(0xFFFD47DF),
//                                 //     ),
//                                 //   ],
//                                 // ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
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
                onTap: () {},
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
