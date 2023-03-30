import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:project1/screens/login.dart';

import 'login_s.dart';

class registration extends StatelessWidget {
  const registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.blueGrey,
        width: double.infinity.w,
        height: double.infinity.h,
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            // colors: [Color(0xFF9BB491), Color(0xFFFFb6c1)],
            // colors: [Color(0xFF9BB491), Color(0xFFFFb6c1)],
            colors: [Color(0xFFFFB6C1), Color(0xFF9DC7DF), Color(0xFFCED0CC)],
            // colors:  Colors.lightBlue,
            // backgroundColor: Color(0xFFFCECDA),

            // colors: [Color(0xFF9BB491), Color(0xFFE3CE82)],
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome To AIA",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
              width: 20,
            ),
            Text(
              "Educational application to help children with autism",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            // SizedBox(
            //   height:,
            // ),

            Image.asset(
              "assets/registration/splash.png",
              height: 400,
            ),
            // Spacer(),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const login_s()),
                );
              },
              minWidth: double.infinity,
              color: const Color(0xFF9BB491),
              height: 60,
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const signup()),
                );
              },
              minWidth: double.infinity,
              color: Color(0xFF84b4cf),

              // color:  ),

              height: 60,
              child: Text(
                "Sign up",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
