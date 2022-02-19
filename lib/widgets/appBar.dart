// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomePageAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomePageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
