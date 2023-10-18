import 'package:flutter/material.dart';
class SizeText extends StatelessWidget {
  final String text;
  const SizeText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFF2E2D2C),
          fontSize: 16,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w600,
          height: 0,
        ),
      ),
    );
  }
}
