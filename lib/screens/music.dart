import 'package:flutter/material.dart';

import '../widgets/home_icon_buttoms.dart';

class Music extends StatelessWidget {
  const Music({super.key});

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
                            'HI Music',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
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
                                      image: 'assets/registration/splash.png',
                                      text: 'Sound 1',
                                      color: Color(0xFFFD8C44),
                                    ),
                                    Catigorys(
                                      image: 'assets/registration/splash.png',
                                      text: 'Sound 2',
                                      color: Color(0xFFA885FF),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Catigorys(
                                      image: 'assets/registration/splash.png',
                                      text: 'Sound 3',
                                      color: Color(0xFF47B4FF),
                                    ),
                                    Catigorys(
                                      image: 'assets/registration/splash.png',
                                      text: ' Sound 4',
                                      color: Color(0xFFFD8C44),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Catigorys(
                                      image: 'assets/registration/splash.png',
                                      text: 'Sound 5',
                                      color: Color(0xFFFD8C44),
                                    ),
                                    Catigorys(
                                      image: 'assets/registration/splash.png',
                                      text: 'Sound 6',
                                      color: Color(0xFFA885FF),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Catigorys(
                                      image: 'assets/registration/splash.png',
                                      text: 'Sound 7',
                                      color: Color(0xFF47B4FF),
                                    ),
                                    Catigorys(
                                      image: 'assets/registration/splash.png',
                                      text: 'Sound 8',
                                      color: Color(0xFFFD8C44),
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
