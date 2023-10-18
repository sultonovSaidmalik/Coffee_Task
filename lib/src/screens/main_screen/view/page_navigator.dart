import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class PageNavigator extends StatelessWidget {
  const PageNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      child: Row(
        children: [
          const Spacer(),
          CupertinoButton(
            onPressed: () {},
            child: Image.asset(
              "assets/icons/ic_home.png",
              width: 24,
              height: 24,
            ),
          ),
          const Spacer(flex: 2),
          CupertinoButton(
            onPressed: () {},
            child: Image.asset(
              "assets/icons/ic_heart.png",
              width: 24,
              height: 24,
            ),
          ),
          const Spacer(flex: 2),
          CupertinoButton(
            onPressed: () {},
            child: Image.asset(
              "assets/icons/ic_bag.png",
              width: 24,
              height: 24,
            ),
          ),
          const Spacer(flex: 2),
          CupertinoButton(
            onPressed: () {},
            child: Image.asset(
              "assets/icons/ic_notification.png",
              width: 24,
              height: 24,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
