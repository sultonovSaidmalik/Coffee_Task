import 'package:flutter/material.dart';
class ImageFon extends StatelessWidget {
  const ImageFon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 468,
          height: 702,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/img.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 580),
          child: SizedBox(
            width: 336,
            height: 134,
            child: Text(
              'Coffee so good, your taste buds will love it.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: 0.34,
              ),
            ),
          ),
        )
      ],
    );
  }
}
