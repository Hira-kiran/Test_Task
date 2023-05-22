// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:task_onee/components/reusable_text.dart';
import '../utils/color_generator.dart';

class TestScreen extends StatefulWidget {
  final ColorGenerator colorGenerator;

  const TestScreen({required this.colorGenerator});

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  late Color _backgroundColor;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.colorGenerator.generateRandomColor();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeBackgroundColor,
      child: Scaffold(
        backgroundColor: _backgroundColor,
        body: const Center(
            child: ReusableText(
          text: 'Hello there 👋',
        )),
      ),
    );
  }

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = widget.colorGenerator.generateRandomColor();
    });
  }
}
