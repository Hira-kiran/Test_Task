import 'package:flutter/material.dart';
import '../constants/color.dart';

class ReusableText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  const ReusableText({
    super.key,
    required this.text,
    this.fontSize = 30,
    this.textColor = AppColors.blackColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize, color: textColor, fontWeight: FontWeight.bold),
    );
  }
}
