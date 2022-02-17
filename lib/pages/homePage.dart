// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        leading: IconButton(
          icon: Icon(
            LineIcons.chevronUp,
            size: 27,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: null,
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              LineIcons.user,
              size: 27,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}
