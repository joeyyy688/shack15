// ignore_for_file: file_names
import 'package:flutter/material.dart';

Size displaySize(BuildContext context) {
  //debugPrint('Size = ' + MediaQuery.of(context).size.toString());
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context) {
  //debugPrint('Height = ' + displaySize(context).height.toString());
  return displaySize(context).height;
}

double displayWidth(BuildContext context) {
  //debugPrint('Width = ' + displaySize(context).width.toString());
  return displaySize(context).width;
}

double displayViewInsetsBottom(BuildContext context) {
  //debugPrint('ViewInset.Bottom =' + MediaQuery.of(context).viewInsets.bottom.toString());
  return MediaQuery.of(context).viewInsets.bottom;
}
