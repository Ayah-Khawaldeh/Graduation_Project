import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/screens/avatar.dart';
import 'package:project1/screens/home.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width.w,
        height: size.height.h,
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                // colors: [Color(0xFF9BB491), Color(0xFFFFb6c1)],
                // colors: [Color(0xFF9BB491), Color(0xFFFFb6c1)],
                colors: [Color(0xFF9DC7DF), Color(0xFFCED0CC)],
                // colors:  Colors.lightBlue,
                // backgroundColor: Color(0xFFFCECDA),

                // colors: [Color(0xFF9BB491), Color(0xFFE3CE82)],
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(children: [
              SizedBox(
                height: 50,
                // width: 20,
              ),
              Image.asset(
                "assets/images/registration/splash.png",
                height: 150,
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
                // width: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "User Name",
                  // prefixIcon: Icon(
                  //   Icon.email,) ,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
                // width: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email Address",
                  // prefixIcon: Icon(
                  //   Icon.email,) ,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
                // width: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  labelText: "BD",
                  // prefixIcon: Icon(
                  //   Icon.email,) ,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
                // width: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "password",
                  // prefixIcon: Icon(
                  //   Icon.email,) ,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 40,
                // width: 20,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => avatar()),
                  );
                },
                minWidth: double.infinity,
                color: Color(0xFF84b4cf),
                height: 60,
                child: Text(
                  "Sign Up",
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
            ]),
          ),
        ),
      ),
    );
  }
}
