import 'package:flutter/material.dart';

import 'package:project1/widgets/home_icon_buttoms.dart';
import 'package:project1/screens/profile.dart';
import 'package:project1/screens/registration.dart';
import 'package:project1/screens/settings.dart';


import 'home.dart';

class cat extends StatelessWidget {
  const cat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCED0CC),
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
                        margin: const EdgeInsets.only(
                          left: 75,
                          top: 40,
                        ),
                        height: 400,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          gradient: const LinearGradient(
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
                          const Text(
                            'HI cat',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: const Text(
                              "Let's go choose Subcategory:",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Catigorycat(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Want',
                                      color: const Color(0xFF47B4FF),
                                    ),
                                    Catigorycat(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Feel',
                                      color: const Color(0xFFA885FF),
                                    ),
                                    Catigorycat(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Stories',
                                      color: const Color(0xFFE3CE82),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Catigoryscat(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Learn',
                                      color: const Color(0xFFFD47DF),
                                    ),
                                    Catigoryscat(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Tests',
                                      color: const Color(0xFFFD8C44),
                                    ),
                                    Catigorycat(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Play',
                                      color: const Color(0xFFFFB6C1),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Catigorycat(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Play',
                                      color: const Color(0xFF7DA4FF),
                                    ),
                                    Catigorycat(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Play',
                                      color: const Color(0xFFFFB6C1),
                                    ),
                                    Catigorycat(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Stories',
                                      color: const Color(0xFF43DC64),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Catigorycat(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Feel',
                                      color: const Color(0xFFA885FF),
                                    ),
                                    Catigorycat(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Play',
                                      color: const Color(0xFFFFB6C1),
                                    ),
                                    Catigorycat(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Stories',
                                      color: const Color(0xFFE3CE82),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Catigorycat(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Feel',
                                      color: const Color(0xFFA885FF),
                                    ),
                                    Catigorycat(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Play',
                                      color: const Color(0xFFFFB6C1),
                                    ),
                                    Catigorycat(
                                      image:
                                          'assets/images/registration/splash.png',
                                      text: 'Stories',
                                      color: const Color(0xFFE3CE82),
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
