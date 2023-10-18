import 'package:flutter/material.dart';

class NameSize extends StatelessWidget {
  const NameSize({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 96,
          height: 43,
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFDEDEDE)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Center(
            child: Text(
              'S',
              style: TextStyle(
                color: Color(0xFF2F2D2C),
                fontSize: 16,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w400,
                height: 0.12,
              ),
            ),
          ),
        ),
        Container(
          width: 96,
          height: 43,
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            color: const Color(0xFFFFF4EE),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFDEDEDE)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Center(
            child: Text(
              'M',
              style: TextStyle(
                color: Color(0xFF2F2D2C),
                fontSize: 16,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w400,
                height: 0.12,
              ),
            ),
          ),
        ),
        Container(
          width: 96,
          height: 43,
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFDEDEDE)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Center(
            child: Text(
              'L',
              style: TextStyle(
                color: Color(0xFF2F2D2C),
                fontSize: 16,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w400,
                height: 0.12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
