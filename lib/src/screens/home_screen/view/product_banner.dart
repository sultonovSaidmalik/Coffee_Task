import 'package:flutter/material.dart';

class AppBanner extends StatelessWidget {
  const AppBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
    height: 150,
    child: PageView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/img_2.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/img_2.png",
               fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
             "assets/images/img_2.png",
               fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
  );
}