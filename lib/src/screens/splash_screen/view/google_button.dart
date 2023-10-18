import 'package:flutter/material.dart';
class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 320,
      // padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x2A000000),
            blurRadius: 3,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x15000000),
            blurRadius: 3,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset(
                    "assets/icons/ic_google.png",
                    height: 30,
                    width: 30,
                  ),
                ),
                const SizedBox(width: 15),
                Text(
                  'Continue with Google',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
