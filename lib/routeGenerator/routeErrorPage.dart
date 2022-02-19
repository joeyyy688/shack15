// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shack15/constants/textElementConstants.dart';
import 'package:shack15/widgets/customNotificationBar.dart';

class RouteErrorPage extends StatefulWidget {
  const RouteErrorPage({Key? key}) : super(key: key);

  @override
  _RouteErrorPageState createState() => _RouteErrorPageState();
}

class _RouteErrorPageState extends State<RouteErrorPage> {
  @override
  Widget build(BuildContext context) {
    return CustomNotificationBar(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          centerTitle: true,
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Text(
            'Page Error',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontSize: textSizeMedium,
                ),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 50),
                  child:
                      Lottie.asset('assets/animations/error.json', height: 200),
                ),
                Text(
                  'Page Not Available!',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
