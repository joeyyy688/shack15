// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shack15/constants/data.dart';

class CAvatarsWidget extends StatelessWidget {
  const CAvatarsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: cAvatarElements.length,
        itemBuilder: (BuildContext context, int index) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CircleAvatar(
            radius: 30,
            child: cAvatarElements[index].image,
          ),
        ),
      ),
    );
  }
}
