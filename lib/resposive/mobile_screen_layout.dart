import 'package:flutter/material.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "this is a mobile screen layout",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
