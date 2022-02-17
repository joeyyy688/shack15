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
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          centerTitle: true,
          automaticallyImplyLeading: false,
          elevation: 0,
          leading: AppBar(),
          title: Text(
            'Page Error',
            style: TextStyle(
              fontSize: textSizeMedium,
              color: Theme.of(context).primaryColor,
              //fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  color: Theme.of(context).colorScheme.background,
                  padding: const EdgeInsets.only(top: 50),
                  child:
                      Lottie.asset('assets/animation/error.json', height: 200)),
              Text(
                'Page Not Available!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: textSizeMedium),
              )
            ],
          ),
        ),
      ),
    );
  }
}
