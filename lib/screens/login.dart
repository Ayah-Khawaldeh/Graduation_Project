import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/screens/home.dart';
import 'package:project1/screens/home_layout.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(),
      // backgroundColor: Colors.blueGrey[150],

//       body: Container(
//         width: size.width.w,
//         height: size.height.h,
//         child: SingleChildScrollView(
//           child: Container(
//             // color: Colors.blueGrey,
//             width: size.width,
//             height: size.height,
//             // height: MediaQuery.of(context).size.height,
//             // width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topRight,
//                 end: Alignment.bottomRight,
//                 // colors: [Color(0xFF9BB491), Color(0xFFFFb6c1)],
//                 // colors: [Color(0xFF9BB491), Color(0xFFFFb6c1)],
//                 colors: [Color(0xFF9BB491), Color(0xFFCED0CC)],
//                 // colors:  Colors.lightBlue,
//                 // backgroundColor: Color(0xFFFCECDA),

//                 // colors: [Color(0xFF9BB491), Color(0xFFE3CE82)],
//               ),
//             ),
//             padding: EdgeInsets.symmetric(horizontal: 30, vertical: 80),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   "Login",
//                   style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 5,
//                   width: 20,
//                 ),
//                 Image.asset(
//                   "assets/images/registration/splash.png",
//                   height: 250,
//                 ),
//                 makeInput("Name"),
//                 makeInput("Email"),
//                 MaterialButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const home()),
//                     );
//                   },
//                   minWidth: double.infinity,
//                   color: const Color(0xFF9BB491),
//                   height: 50,
//                   child: Text(
//                     "Login",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 16,
//                     ),
//                   ),
//                   shape: RoundedRectangleBorder(
//                     side: BorderSide(color: Colors.black),
//                     borderRadius: BorderRadius.circular(40),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget makeInput(label, {oobscureText = false}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: TextStyle(fontSize: 16, color: Colors.black),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         TextField(
//           obscureText: oobscureText,
//           decoration: InputDecoration(
//               contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
//               enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.black))),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//       ],
      body: Container(
        width: size.width.w,
        height: size.height.h,
        child: SingleChildScrollView(
          child: Container(
            // color: Colors.blueGrey,
            width: size.width,
            height: size.height,
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                // colors: [Color(0xFF9BB491), Color(0xFFFFb6c1)],
                // colors: [Color(0xFF9BB491), Color(0xFFFFb6c1)],
                colors: [Color(0xFF9BB491), Color(0xFFCED0CC)],
                // colors:  Colors.lightBlue,
                // backgroundColor: Color(0xFFFCECDA),

                // colors: [Color(0xFF9BB491), Color(0xFFE3CE82)],
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(children: [
              const SizedBox(
                height: 50,
                // width: 20,
              ),
              Image.asset(
                "assets/images/registration/splash.png",
                height: 200,
              ),
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
                // width: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  labelText: "User Name",
                  // prefixIcon: Icon(
                  //   Icon.email,) ,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 40,
                // width: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email Address",
                  // prefixIcon: Icon(
                  //   Icon.email,) ,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 40,
                // width: 20,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeLayout()),
                  );
                },
                minWidth: double.infinity,
                color: const Color(0xFF9BB491),
                height: 50,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
