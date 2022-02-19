// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shack15/widgets/customDivider.dart';

class SubScreenDivider extends StatelessWidget {
  final String text;
  const SubScreenDivider({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          const CustomDivider(),
          Text(text, style: Theme.of(context).textTheme.subtitle1),
          const CustomDivider(),
        ],
      ),
    );
  }
}
