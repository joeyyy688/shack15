// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomNotificationBar extends StatelessWidget {
  final Widget child;
  const CustomNotificationBar({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: MediaQuery.of(context).platformBrightness == Brightness.dark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      child: child,
    );
  }
}
