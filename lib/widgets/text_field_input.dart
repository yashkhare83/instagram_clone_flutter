import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String labelTextInput;

  final TextInputType TextInputKeyBoardType;

  final TextStyle TextStyleInput = TextStyle(color: Colors.white);

  final TextEditingController TextEditingControl;

  final bool isPass;

  TextWidget(
      {Key? key,
      required this.labelTextInput,
      required this.TextInputKeyBoardType,
      required this.TextEditingControl,
      required this.isPass})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingControl,
      style: TextStyleInput,
      decoration: InputDecoration(
        labelText: labelTextInput,
        labelStyle: TextStyle(color: Colors.white),
        filled: true, //<-- SEE HERE
        fillColor: Color.fromRGBO(255, 255, 255, 0.20),
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputKeyBoardType,
      obscureText: isPass,
    );
  }
}
