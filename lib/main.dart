import 'package:flutter/material.dart';
import 'package:instagram_clone/resposive/responsive_layout_screen.dart';
import 'package:instagram_clone/screen/login_screen.dart';
import 'package:instagram_clone/screen/signup_screen.dart';

import 'resposive/mobile_screen_layout.dart';
import 'resposive/web_screen_layout.dart';
import 'utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram Clone',
        theme: new ThemeData(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
        // home: ResponsiveLayout(
        //    Log mobileScreenLayout: MobileScreenLayout(),
        //     webScreenLayout: WebScreenLayout()),
        home: SignUp());
  }
}
