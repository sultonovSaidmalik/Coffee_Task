import 'package:flutter/material.dart';
class TextDescription extends StatelessWidget {
  final String text;
  const TextDescription({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF2E2D2C),
          fontSize: 20,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w600,
          height: 0,
        ),
      ),
    );
  }
}
