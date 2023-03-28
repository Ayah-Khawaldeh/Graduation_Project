import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermojiCircleAvatar.dart';
import 'package:project1/screens/settings.dart';
import 'home.dart';
import 'registration.dart';

// class profile extends StatelessWidget {
//   const profile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // leading: IconButton(onPressed: () {},icon: const Icon) ,),
//       ),
//       body: SingleChildScrollView(
//         child: Container(),
//       ),
//     );
//   }
// }

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCED0CC),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                // colors: [Colors.red, Colors.deepOrange.shade300],
                colors: [Colors.green, Color(0xFF9BB491)],

                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.5, 0.9],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // CircleAvatar(
                    //   backgroundColor: Colors.green.shade300,
                    //   minRadius: 35.0,
                    //   // child: Icon(
                    //   //   Icons.call,
                    //   //   size: 30.0,
                    //   // ),
                    // ),
                    SizedBox(
                      height: 5,
                    ),
                    FluttermojiCircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      // radius: 100,
                    ),
                    // CircleAvatar(
                    //   backgroundColor: Colors.green.shade300,
                    //   minRadius: 35.0,
                    //   child: Icon(
                    //     Icons.message,
                    //     size: 30.0,
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Leonardo Palmeiro',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                // Text(
                //   'Flutter Developer',
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 25,
                //   ),
                // ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                // Expanded(
                //   child: Container(
                //     color: Colors.deepOrange.shade300,
                //     child: ListTile(
                //       title: Text(
                //         '5000',
                //         textAlign: TextAlign.center,
                //         style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 30,
                //           color: Colors.white,
                //         ),
                //       ),
                //       subtitle: Text(
                //         'Followers',
                //         textAlign: TextAlign.center,
                //         style: TextStyle(
                //           fontSize: 20,
                //           color: Colors.white70,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // Expanded(
                //   child: Container(
                //     color: Colors.green,
                //     child: ListTile(
                //       title: Text(
                //         '5000',
                //         textAlign: TextAlign.center,
                //         style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 30,
                //           color: Colors.white,
                //         ),
                //       ),
                //       subtitle: Text(
                //         'Following',
                //         textAlign: TextAlign.center,
                //         style: TextStyle(
                //           fontSize: 20,
                //           color: Colors.white70,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'palmeiro.leonardo@gmail.com',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'GitHub',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'https://github.com/leopalmeiro',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'Linkedin',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'www.linkedin.com/in/leonardo-palmeiro-834a1755',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
//         backgroundColor: Color(0xFFCED0CC),
//         bottomNavigationBar: Container(
//           height: 80,
//           width: double.infinity,
//           padding: EdgeInsets.all(10),
//           color: Color(0xFF9BB491),
//           child: Padding(
//             padding: const EdgeInsets.only(bottom: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 IconButton(
//                   icon: const Icon(Icons.language),
//                   tooltip: 'language Icon',
//                   onPressed: () {
//                     // return login();
//                     // print("acount");
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const registration()),
//                     );
//                   },
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.home),
//                   tooltip: 'Home Icon',
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const home()),
//                     );
//                   },
//                 ),

//                 //IconButton
//                 IconButton(
//                   icon: const Icon(Icons.settings),
//                   tooltip: 'Setting Icon',
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const settings()),
//                     );
//                   },
//                 ),

//                 IconButton(
//                   icon: const Icon(Icons.account_circle_rounded),
//                   tooltip: ' Account Icon',
//                   onPressed: () {
//                     // return login();
//                     // print("acount");
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => profile()),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//         body: Center(
           
//           child: Profile(
             
//             imageUrl:
//                 "https://images.unsplash.com/photo-1598618356794-eb1720430eb4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
//             name: "Shamim Miah",
            
//             website: "shamimmiah.com",
//             designation: "Project Manager | Flutter & Blockchain Developer",
//             email: "cse.shamimosmanpailot@gmail.com",
//             phone_number: "01757736053",
//           ),
//         ));
//   }
// }

//   }
// }
// class profile extends StatelessWidget {
//   const profile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFCED0CC),
//       bottomNavigationBar: Container(
//         height: 80,
//         width: double.infinity,
//         padding: EdgeInsets.all(10),
//         color: Color(0xFF9BB491),
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

//               // IconButton(
//               //   icon: const Icon(Icons.account_circle_rounded),
//               //   tooltip: ' Account Icon',
//               //   onPressed: () {
//               //     // return login();
//               //     // print("acount");
//               //     Navigator.push(
//               //       context,
//               //       MaterialPageRoute(builder: (context) => profile()),
//               //     );
//               //   },
//               // ),
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
//                               Color(0xFF9BB491),
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
//                             'HI profile',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 26,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           // Container(
//                           //   child: Text(
//                           //     "Let's go choose category:",
//                           //     style: TextStyle(
//                           //       color: Colors.black,
//                           //       fontSize: 18,
//                           //       fontWeight: FontWeight.bold,
//                           //     ),
//                           //   ),
//                           // ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(top: 15),
//                             child: Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     FluttermojiCircleAvatar(
//                                       backgroundColor: Colors.blueGrey,
//                                       radius: 100,
//                                     ),
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
// //       backgroundColor: Color(0xFFCED0CC),
// //       bottomNavigationBar: Container(
// //         height: 80,
// //         width: double.infinity,
// //         padding: EdgeInsets.all(10),
// //         color: Color(0xFF9BB491),
// //         child: Padding(
// //           padding: const EdgeInsets.only(bottom: 10),
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //             children: [
// //               IconButton(
// //                 icon: const Icon(Icons.language),
// //                 tooltip: 'language Icon',
// //                 onPressed: () {
// //                   // return login();
// //                   // print("acount");
// //                   Navigator.push(
// //                     context,
// //                     MaterialPageRoute(
// //                         builder: (context) => const registration()),
// //                   );
// //                 },
// //               ),
// //               IconButton(
// //                 icon: const Icon(Icons.home),
// //                 tooltip: 'Home Icon',
// //                 onPressed: () {
// //                   Navigator.push(
// //                     context,
// //                     MaterialPageRoute(builder: (context) => const home()),
// //                   );
// //                 },
// //               ),

// //               //IconButton
// //               IconButton(
// //                 icon: const Icon(Icons.settings),
// //                 tooltip: 'Setting Icon',
// //                 onPressed: () {
// //                   Navigator.push(
// //                     context,
// //                     MaterialPageRoute(builder: (context) => const settings()),
// //                   );
// //                 },
// //               ),
// //               IconButton(
// //                 icon: const Icon(Icons.account_circle_rounded),
// //                 tooltip: ' Account Icon',
// //                 onPressed: () {
// //                   // return login();
// //                   // print("acount");
// //                   Navigator.push(
// //                     context,
// //                     MaterialPageRoute(builder: (context) => const profile()),
// //                   );
// //                 },
// //               ),
// //               //IconButton
// //             ],
// //           ),
// //         ),
// //       ),
// //       appBar: AppBar(
// //         title: Text('Hi profile '),
// //         backgroundColor: Colors.white38,
// //       ),
// //     );
// //   }
// // }
// // // class profile extends StatefulWidget {
// // //   const profile({Key? key}) : super(key: key);

// // //   @override
// // //   _profileState createState() => _profileState();
// // // }

// // // class _profileState extends State<profile> {
// // //   final items = const [
// // //     Icon(
// // //       Icons.people,
// // //       size: 30,
// // //     ),
// // //     Icon(
// // //       Icons.person,
// // //       size: 30,
// // //     ),
// // //     Icon(
// // //       Icons.add,
// // //       size: 30,
// // //     ),
// // //     Icon(
// // //       Icons.search_outlined,
// // //       size: 30,
// // //     )
// // //   ];

// // //   int index = 1;

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Colors.blue,
// // //       appBar: AppBar(
// // //         title: const Text('Curved Navigation Bar'),
// // //         backgroundColor: Colors.blue[300],
// // //       ),
// // //       bottomNavigationBar: CurvedNavigationBar(
// // //         items: items,
// // //         index: index,
// // //         onTap: (selctedIndex) {
// // //           setState(() {
// // //             index = selctedIndex;
// // //           });
// // //         },
// // //         height: 70,
// // //         backgroundColor: Colors.transparent,
// // //         animationDuration: const Duration(milliseconds: 300),
// // //         // animationCurve: ,
// // //       ),
// // //       body: Container(
// // //           color: Colors.blue,
// // //           width: double.infinity,
// // //           height: double.infinity,
// // //           alignment: Alignment.center,
// // //           child: getSelectedWidget(index: index)),
// // //     );
// // //   }

// // //   Widget getSelectedWidget({required int index}) {
// // //     Widget widget;
// // //     switch (index) {
// // //       case 0:
// // //         widget = const signup();
// // //         break;
// // //       case 1:
// // //         widget = const profile();
// // //         break;
// // //       default:
// // //         widget = const single();
// // //         break;
// // //     }
// // //     return widget;
// // //   }
// // // }

