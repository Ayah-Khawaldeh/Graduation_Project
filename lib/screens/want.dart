import 'package:flutter/material.dart';

import '../widgets/home_icon_buttoms.dart';

class Want extends StatelessWidget {
  const Want({super.key});

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
                            'HI Want',
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
                                      text: 'I want to  drink \n water',
                                      color: Color(0xFFFD8C44),
                                    ),
                                    Catigorys(
                                      image: 'assets/registration/splash.png',
                                      text: 'I want to eat',
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
                                      text: 'I want to go to  \nthe garden',
                                      color: Color(0xFF47B4FF),
                                    ),
                                    Catigorys(
                                      image: 'assets/registration/splash.png',
                                      text: ' I want to  drink\n juice',
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
                                      text: 'I want to go  to\n sleep',
                                      color: Color(0xFFFD8C44),
                                    ),
                                    Catigorys(
                                      image: 'assets/registration/splash.png',
                                      text: 'I want to go play',
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
                                      text: 'I want to  go \nshopping',
                                      color: Color(0xFF47B4FF),
                                    ),
                                    Catigorys(
                                      image: 'assets/registration/splash.png',
                                      text: 'I want to visit \n my grandfather',
                                      color: Color(0xFFFD8C44),
                                    )
                                  ],
                                ),

                                // SizedBox(
                                //   height: 15,
                                // ),
                                // Container(
                                //   child: Text(
                                //     "Choose category:",
                                //     style: TextStyle(
                                //       color: Colors.black,
                                //       fontSize: 21,
                                //       fontWeight: FontWeight.bold,
                                //     ),
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: 15,
                                // ),
                                // Row(
                                //   mainAxisAlignment:
                                //       MainAxisAlignment.spaceEvenly,
                                //   children: [
                                //     Catigory(
                                //       image: 'assets/registration/splash.png',
                                //       text: 'Learn',
                                //       color: Color(0xFFFD47DF),
                                //     ),
                                //     Catigory(
                                //       image: 'assets/registration/splash.png',
                                //       text: 'Tests',
                                //       color: Color(0xFFFD8C44),
                                //     )
                                //   ],
                                // ),
                                // SizedBox(height: 15),
                                // Row(
                                //   mainAxisAlignment:
                                //       MainAxisAlignment.spaceEvenly,
                                //   children: [
                                //     Catigory(
                                //       image: 'assets/registration/splash.png',
                                //       text: 'Play',
                                //       color: Color(0xFF7DA4FF),
                                //     ),
                                //     Catigory(
                                //       image: 'assets/registration/splash.png',
                                //       text: 'Stories',
                                //       color: Color(0xFF43DC64),
                                //     )
                                //   ],
                                // ),
                                // SizedBox(height: 15),
                                // Row(
                                //   mainAxisAlignment:
                                //       MainAxisAlignment.spaceEvenly,
                                //   children: [
                                //     Catigory(
                                //       image:
                                //           'assets/registration/splash.png',
                                //       text: 'Play',
                                //       color: Color(0xFFFFB6C1),
                                //     ),
                                //     Catigory(
                                //       image:
                                //           'assets/registration/splash.png',
                                //       text: 'Stories',
                                //       color: Color(0xFFE3CE82),
                                //     )
                                //   ],
                                // ),
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
