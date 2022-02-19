// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shack15/constants/data.dart';

class Shack15Menus extends StatelessWidget {
  const Shack15Menus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: menusData
            .map(
              (e) => Expanded(
                flex: 3, // 30% of space for each menu
                child: Stack(
                  children: [
                    e.image,
                    Positioned(
                      top: 30,
                      left: 28,
                      child: Text(
                        e.title,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
