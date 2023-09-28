// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../utils/dimenstions.dart';

class ResponsiveLayout extends StatelessWidget {
  var mobileScreenLayout;

  var webScreenLayout;

  ResponsiveLayout({
    Key? key,
    required this.mobileScreenLayout,
    required this.webScreenLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > webScreenSize) {
          return webScreenLayout;
        } else {
          return mobileScreenLayout;
        }
      },
    );
  }
}
