import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final EdgeInsets? padding;
  final String text;
  final double fontsize;
  final Color color;
  final FontWeight? fontWeight;

  const CustomText({
    required this.color,
    required this.fontsize,
    this.padding,
    required this.text,
    this.fontWeight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}