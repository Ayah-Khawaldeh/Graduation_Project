import 'dart:async';
// import 'dart:js';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:project1/screens/registration.dart';

// class splash extends StatelessWidget {
//   const splash({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFFCECDA),
//       body: Center(
//         child: Image(
//           image: AssetImage(
//             'assets/images/registration/splash.png',
//           ),
//         ),
//       ),
//     );
//   }
// }
class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => registration())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity.w,
        height: double.infinity.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            // colors: [Color(0xFF9BB491), Color(0xFFFFb6c1)],
            // colors: [Color(0xFF9BB491), Color(0xFFFFb6c1)],
            colors: [
              Color(0xFFFFB6C1),
              Color(0xFFE3CE82),
              Color(0xFF9BB491),
              Color(0xFF9DC7DF),
              Color(0xFFCED0CC)
            ],
            // colors:  Colors.lightBlue,
            // backgroundColor: Color(0xFFFCECDA),

            // colors: [Color(0xFF9BB491), Color(0xFFE3CE82)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/registration/splash.png',
                  height: 300,
                  width: 300,
                ),
                Text(
                  "AIA",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
