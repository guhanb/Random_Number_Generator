// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/range_selector_page.dart';

void main() {
  runApp(AppWidget());
}

// ignore: use_key_in_widget_constructors
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Randomize',
      home: RangeSelectorPage(),
    );
  }
}
