import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/resources/auth_methods.dart';

import '../widgets/text_field_input.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // Read comments for better discussion about initailing variables
  // Add '_' in front of the variables to make it private to a class. Variables inside a function shouldn't use '_' for variables, since it is already private for that function.
  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  final userNameController = TextEditingController();
  final bioController = TextEditingController();

  @override
  void dispose() {
    // it is using for ending of stateful widgets
    // Clean up the controller then the widget is disposed.
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    userNameController.dispose();
    bioController.dispose();
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
                      height: 100,
                      width: 100,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      child: SvgPicture.asset(
                        'assets/instagram_logo.svg',
                        colorFilter:
                            ColorFilter.mode(Colors.white, BlendMode.srcIn),
                        height: 64,
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    SizedBox(
                      child: TextWidget(
                        labelTextInput: 'Username',
                        TextInputKeyBoardType: TextInputType.text,
                        TextEditingControl: userNameController,
                        isPass: false,
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
                    SizedBox(
                      child: TextWidget(
                        labelTextInput: 'Bio',
                        TextInputKeyBoardType: TextInputType.text,
                        TextEditingControl: bioController,
                        isPass: false,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
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
                    onTap: () async {
                      final res = await AuthMethods().signUpUser(
                          email: emailController.text,
                          password: passwordController.text,
                          username: userNameController.text,
                          bio: bioController.text);
                    },
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
