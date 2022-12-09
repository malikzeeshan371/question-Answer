// ignore_for_file: unused_import, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  Answer(this.selectHandler);
  // const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child:
            ElevatedButton(child: Text('Button1'), onPressed: selectHandler));
  }
}
