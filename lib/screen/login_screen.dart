// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/text_field_input.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final myController = TextEditingController();
  @override

  // unable to add super.dispose()
  void dispose() {
    // Clean up the controller then the widget is disposed.
    myController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 80, 16, 0),
          width: 500.0,
          child: Column(
            children: [
              SizedBox(
                child: SvgPicture.asset(
                  'assets/instagram_logo.svg',
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  height: 64,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                child: TextWidget(
                  labelTextInput: 'Email',
                  TextInputKeyBoardType: TextInputType.emailAddress,
                  TextEditingControl: myController,
                  isPass: false,
                ),
              ),
              SizedBox(height: 20.0),
              // ignore: prefer_const_constructors
              SizedBox(
                // ignore: prefer_const_constructors
                child: TextWidget(
                  labelTextInput: 'Password',
                  TextInputKeyBoardType: TextInputType.visiblePassword,
                  TextEditingControl: myController,
                  isPass: true,
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
