import 'package:flutter/material.dart';
class ProductRating extends StatelessWidget {
  final String text;
  final void Function() onTap1;
  final void Function() onTap2;
  const ProductRating({super.key, required this.text, required this.onTap1, required this.onTap2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Sora',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: onTap1,
            icon: SizedBox(
              height: 44,
              width: 44,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF0F0),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(6),
                  child: Image(image: AssetImage("assets/icons/ic_bean.png"),),
                )
              ),
            ),
          ),
          IconButton(
            onPressed: onTap2,
            icon: SizedBox(
              height: 44,
              width: 44,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF0F0),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(6),
                  child: Image(image: AssetImage("assets/icons/ic_milk.png"),),
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
