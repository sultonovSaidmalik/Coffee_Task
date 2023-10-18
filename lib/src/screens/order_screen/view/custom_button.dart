import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final String imageUrl;
  final double width;

  const CustomButton({
    required this.imageUrl,
    required this.text,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        fixedSize: Size(width, 35),
        backgroundColor: Colors.white,
        side: const BorderSide(
          color: Color(0xFFDEDEDE),
          width: 2,
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
            image: AssetImage(imageUrl),
            height: 25,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF303336),
            ),
          ),
        ],
      ),
    );
  }
}