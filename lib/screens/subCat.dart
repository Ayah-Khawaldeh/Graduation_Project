import 'package:flutter/material.dart';
import 'package:project1/widgets/home_icon_buttoms.dart';

class subCat extends StatelessWidget {
  const subCat({super.key});

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
                          EdgeInsets.symmetric(horizontal: 20, vertical: 90),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'HI subcat',
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
                              " Subcategory:",
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
                                    CatigorySub(
                                      image: 'assets/registration/splash.png',
                                      text: 'Food',
                                      color: Color(0xFF47B4FF),
                                    ),
                                    CatigorySub(
                                      image: 'assets/registration/splash.png',
                                      text: 'Letters',
                                      color: Color(0xFFA885FF),
                                    ),
                                    // CatigorySub(
                                    //   image:
                                    //       'assets/registration/splash.png',
                                    //   text: 'Stories',
                                    //   color: Color(0xFFE3CE82),
                                    // )
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CatigorySub(
                                      image: 'assets/registration/splash.png',
                                      text: 'Animals',
                                      color: Color(0xFFFD47DF),
                                    ),
                                    CatigorySub(
                                      image: 'assets/registration/splash.png',
                                      text: 'Food',
                                      color: Color(0xFFFD8C44),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CatigorySub(
                                      image: 'assets/registration/splash.png',
                                      text: 'Drinks',
                                      color: Color(0xFF7DA4FF),
                                    ),
                                    CatigorySub(
                                      image: 'assets/registration/splash.png',
                                      text: 'Clothes',
                                      color: Color(0xFFFFB6C1),
                                    ),
                                    // CatigorySub(
                                    //   image:
                                    //       'assets/registration/splash.png',
                                    //   text: 'Stories',
                                    //   color: Color(0xFF43DC64),
                                    // )
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CatigorySub(
                                      image: 'assets/registration/splash.png',
                                      text: 'Numbers',
                                      color: Color(0xFFA885FF),
                                    ),
                                    CatigorySub(
                                      image: 'assets/registration/splash.png',
                                      text: 'Letters',
                                      color: Color(0xFFFFB6C1),
                                    ),
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
