// ignore_for_file: file_names

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shack15/constants/colorsConstants.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      elevation: 10,
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Theme.of(context).primaryColor,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {},
      items: [
        BottomNavigationBarItem(
          icon: Column(
            children: [
              const Icon(
                Icons.waves,
                color: bottomNavigationIconColor,
              ),
              Text(
                'NEWS',
                style:
                    Theme.of(context).textTheme.button!.copyWith(fontSize: 8),
              ),
            ],
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              const Icon(
                LineIcons.alternateTicket,
                color: bottomNavigationIconColor,
              ),
              Text(
                'EVENTS',
                style:
                    Theme.of(context).textTheme.button!.copyWith(fontSize: 8),
              ),
            ],
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Transform.rotate(
                angle: 90 *
                    pi /
                    180, // rotate icon 90 degrees since desired icon was not found
                child: const Icon(
                  Icons.waves,
                  color: bottomNavigationIconColor,
                  size: 20,
                ),
              ),
              Text(
                'FOOD & DRINKS & TOKENS',
                textAlign: TextAlign.center,
                overflow: TextOverflow.visible,
                style:
                    Theme.of(context).textTheme.button!.copyWith(fontSize: 8),
              )
            ],
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              const Icon(
                LineIcons.expand,
                color: bottomNavigationIconColor,
              ),
              Text(
                'ROOMS',
                style:
                    Theme.of(context).textTheme.button!.copyWith(fontSize: 8),
              ),
            ],
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              const Icon(
                LineIcons.bullseye,
                color: bottomNavigationIconColor,
              ),
              Text(
                'COMMUNITY',
                style:
                    Theme.of(context).textTheme.button!.copyWith(fontSize: 8),
              ),
            ],
          ),
          label: '',
        ),
      ],
    );
  }
}
