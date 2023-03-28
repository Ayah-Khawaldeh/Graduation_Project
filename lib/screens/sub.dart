import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:project1/screens/avatar.dart';
import 'package:project1/widgets/home_icon_buttoms.dart';
import 'package:project1/screens/profile.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/screens/registration.dart';
import 'package:project1/screens/settings.dart';
// import 'package:flutter/material.dart';
// import 'package:project1/screens/home_icon_buttoms.dart';
// import 'dart:js_util';

import 'home.dart';

class sub extends StatelessWidget {
  const sub({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCED0CC),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Transform.rotate(
                      origin: Offset(30, -60),
                      angle: 2.4,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 75,
                          top: 40,
                        ),
                        height: 400,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            colors: [
                              // Color(0xFFFFB6C1),

                              Color(0xFFE3CE82),
                              Color(0xFF9BB491),
                              // // Color(0xFFCED0CC),
                              // Color(0xFF9DC7DF),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 90),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'HI sub',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Text(
                              "Let's go choose Subcategory:",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CatigorySingle(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Want',
                                      color: Color(0xFF47B4FF),
                                    ),
                                    CatigorySingle(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Feel',
                                      color: Color(0xFFA885FF),
                                    ),
                                    CatigorySingle(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Stories',
                                      color: Color(0xFFE3CE82),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CatigorySingle(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Learn',
                                      color: Color(0xFFFD47DF),
                                    ),
                                    CatigorySingle(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Tests',
                                      color: Color(0xFFFD8C44),
                                    ),
                                    CatigorySingle(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Play',
                                      color: Color(0xFFFFB6C1),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CatigorySingle(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Play',
                                      color: Color(0xFF7DA4FF),
                                    ),
                                    CatigorySingle(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Play',
                                      color: Color(0xFFFFB6C1),
                                    ),
                                    CatigorySingle(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Stories',
                                      color: Color(0xFF43DC64),
                                    )
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CatigorySingle(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Feel',
                                      color: Color(0xFFA885FF),
                                    ),
                                    CatigorySingle(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Play',
                                      color: Color(0xFFFFB6C1),
                                    ),
                                    CatigorySingle(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Stories',
                                      color: Color(0xFFE3CE82),
                                    )
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CatigorySingle(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Feel',
                                      color: Color(0xFFA885FF),
                                    ),
                                    CatigorySingle(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Play',
                                      color: Color(0xFFFFB6C1),
                                    ),
                                    CatigorySingle(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Stories',
                                      color: Color(0xFFE3CE82),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
