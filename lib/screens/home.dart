import 'package:flutter/material.dart';
import 'package:project1/widgets/home_icon_buttoms.dart';


class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCED0CC),
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Transform.rotate(
                  origin: const Offset(30, -60),
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
                      const EdgeInsets.only(left: 20,right: 20, top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'HI Home',
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
                          "Let's go choose Picture:",
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
                                Catigorys(
                                  image:
                                      'assets/images/registration/splash.png',
                                  text: 'Want',
                                  color: Color(0xFF47B4FF),
                                ),
                                Catigorys(
                                  image:
                                      'assets/images/registration/splash.png',
                                  text: 'Feel',
                                  color: Color(0xFFA885FF),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Text(
                                "choose category:",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                Catigory(
                                  image:
                                      'assets/images/registration/splash.png',
                                  text: 'Learn',
                                  color: Color(0xFFFD47DF),
                                ),
                                Catigory(
                                  image:
                                      'assets/images/registration/splash.png',
                                  text: 'Tests',
                                  color: Color(0xFFFD8C44),
                                )
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                Catigory(
                                  image:
                                      'assets/images/registration/splash.png',
                                  text: 'Play',
                                  color: Color(0xFF7DA4FF),
                                ),
                                Catigory(
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
                                Catigory(
                                  image:
                                      'assets/images/registration/splash.png',
                                  text: 'Play',
                                  color: Color(0xFFFFB6C1),
                                ),
                                Catigory(
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
    );
  }
}
