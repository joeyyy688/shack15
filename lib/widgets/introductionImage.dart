// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shack15/mediaQuery/sizeHelpers.dart';

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      width: displayWidth(context),
      child: const Image(
        image: AssetImage('assets/images/IMG_1065.png'),
      ),
    );
  }
}
