// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TokenNotesWidget extends StatelessWidget {
  const TokenNotesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Image(
        image: AssetImage('assets/images/TOKEN.png'),
      ),
      title: Text(
        'We believe in helping others as much as we can, as well as recognizing those that help the community. Toekns help recognize the people who go above and beyone. Send your first token',
        style: Theme.of(context).textTheme.bodyText1,
      ),
      trailing: const SizedBox(),
    );
  }
}
