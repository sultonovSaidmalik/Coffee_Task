import 'package:flutter/material.dart';
class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Text(
        'The best grain, the finest roast, the \n\n\n\n\n\n\n\n\n\npowerful flavor.',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFFA8A8A8),
          fontSize: 14,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w400,
          height: 0.11,
          letterSpacing: 0.14,
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Coffee so good, \nyour taste buds \nwill love it.',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 34,
        fontFamily: 'Sora',
        fontWeight: FontWeight.w600,
        height: 0,
        letterSpacing: 0.34,
      ),
    );
  }
}
