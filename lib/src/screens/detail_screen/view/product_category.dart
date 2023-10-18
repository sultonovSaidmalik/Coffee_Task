import 'package:flutter/material.dart';
class ProductCategory extends StatelessWidget {
  final String text;
  const ProductCategory({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF9B9B9B),
          fontSize: 14,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
    );
  }
}
