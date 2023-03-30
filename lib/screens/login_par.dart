import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/screens/home.dart';

class login_par extends StatelessWidget {
  const login_par({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
            decoration: BoxDecoration(
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
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(children: [
              SizedBox(
                height: 50,
                // width: 20,
              ),
              Image.asset(
                "assets/registration/splash.png",
                height: 200,
              ),
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40,
                // width: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                onSaved: (value) {
                  // Save the email
                },
              ),
              SizedBox(
                height: 40,
                // width: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.lock),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onSaved: (value) {
                  // Save the password
                },
              ),
              SizedBox(
                height: 40,
                // width: 20,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const home()),
                  );
                },
                minWidth: double.infinity,
                color: const Color(0xFF9BB491),
                height: 50,
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
            ]),
          ),
        ),
      ),
    );
  }
}
