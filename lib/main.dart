import 'package:flutter/material.dart';
import 'utils/color_generator.dart';
import 'view/test_app_screen.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestScreen(colorGenerator: ColorGenerator()),
    );
  }
}
