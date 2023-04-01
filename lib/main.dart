import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project1/screens/home_layout.dart';
import 'package:project1/screens/splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(360, 690),
        builder: (context, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'AIA Demo',
//             ),
            home: splash(),
          );
        });
  }
}
