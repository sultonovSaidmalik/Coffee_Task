import 'package:flutter/material.dart';
class ProductDescription extends StatelessWidget {
  final String text;
  const ProductDescription({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: 360,
        child: Text(
          text,
          maxLines: 3,
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 14,
            height: 1.6,
          ),
        ),
      ),
    );
  }
}
