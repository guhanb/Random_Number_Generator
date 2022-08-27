// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/random_page.dart';
import 'package:flutter_application_1/range_selector_form.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: todo
typedef IntValueSetter = void Function(int value);

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({Key? key}) : super(key: key);

  @override
  State<RangeSelectorPage> createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  final formKey = GlobalKey<FormState>();
  int _min = 0;
  int _max = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: RangeSelectorForm(
          formKey: formKey,
          minValueSetter: (value) => _min = value,
          maxValueSetter: (value) => _max = value),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RandomPage(min: _min, max: _max)));
          }
        },
      ),
    );
  }
}
