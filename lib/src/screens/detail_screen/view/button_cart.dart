import 'package:flutter/material.dart';

class ButtonCart extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const ButtonCart({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 110,
      clipBehavior: Clip.antiAlias,
      decoration: const ShapeDecoration(
        color: Color(0xFFF9F9F9),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// Product Price
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 23),
              child: Column(
                children: [
                  const Text(
                    "Price",
                    style: TextStyle(
                      color: Color(0xFF9B9B9B),
                      fontSize: 16,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    text,
                    style: const TextStyle(
                      color: Color(0xFFC67C4E),
                      fontSize: 20,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            /// Buy Button
            GestureDetector(
              onTap: onTap,
              child: Container(
                width: 217,
                height: 55,
                decoration: ShapeDecoration(
                  color: const Color(0xFFC67C4E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
