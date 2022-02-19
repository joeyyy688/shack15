// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        color: Theme.of(context).primaryColor.withOpacity(0.9),
        endIndent: 25,
        indent: 25,
      ),
    );
  }
}
