// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override

  // unable to add super.dispose()
  void dispose() {
    // Clean up the controller then the widget is disposed.
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 80, 16, 0),
          width: 500.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                flex: 5,
                child: Column(
                  children: [
                    SizedBox(
                      child: SvgPicture.asset(
                        'assets/instagram_logo.svg',
                        colorFilter:
                            ColorFilter.mode(Colors.white, BlendMode.srcIn),
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
                        TextEditingControl: emailController,
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
                        TextEditingControl: passwordController,
                        isPass: true,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                        child: Text(
                          'Log In',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Color(0xFF3797EF),
                        ),
                        width: double.infinity,
                        padding: EdgeInsets.all(13.5)),
                  ],
                ),
              ),
              Flexible(
                  flex: 1,
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account?',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(255, 255, 255, 0.6),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'Sign up.',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFFFFFFFF)),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
