// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shack15/constants/data.dart';
import 'package:shack15/mediaQuery/sizeHelpers.dart';

class LatestNewsWidget extends StatefulWidget {
  const LatestNewsWidget({Key? key}) : super(key: key);

  @override
  State<LatestNewsWidget> createState() => _LatestNewsWidgetState();
}

class _LatestNewsWidgetState extends State<LatestNewsWidget> {
  late ScrollController latestNewsScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: displayHeight(context) * 0.25,
      child: Scrollbar(
        controller: latestNewsScrollController,
        isAlwaysShown: true,
        child: ListView.builder(
          controller: latestNewsScrollController,
          shrinkWrap: true,
          itemCount: latestNewsData.length,
          itemBuilder: (context, index) => ListTile(
            leading: latestNewsData[index].image,
            title: Text(
              latestNewsData[index].title,
              style: Theme.of(context).textTheme.headline4,
            ),
            subtitle: Text(
              latestNewsData[index].subtitle,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            trailing: Icon(
              LineIcons.angleRight,
              size: 27,
              color: Theme.of(context).primaryColor.withOpacity(0.4),
            ),
          ),
        ),
      ),
    );
  }
}
