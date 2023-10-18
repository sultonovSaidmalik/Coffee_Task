
import 'package:flutter/material.dart';

class CustomCoffee extends StatelessWidget {
  const CustomCoffee({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Image(
          image: AssetImage(
            "assets/images/img_5.png",
          ),
        ),
      ),
      title: Text(
        "Cappucino",
        style: TextStyle(
          fontSize: 16,
          color: Color(0xFF2F2D2C),
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        "with Chocolate",
        style: TextStyle(
          fontSize: 12,
          color: Color(0xFF9B9B9B),
        ),
      ),
      trailing: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomCoffeeCount(icon: Icons.remove),
          Text(
            "1",
            style: TextStyle(
              fontSize: 15,
              color: Color(0xFF2F2D2C),
              fontWeight: FontWeight.w700,
            ),
          ),
          CustomCoffeeCount(icon: Icons.add),
        ],
      ),
    );
  }
}

class CustomCoffeeCount extends StatelessWidget {
  final IconData icon;

  const CustomCoffeeCount({
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        fixedSize: const Size(7, 7),
        backgroundColor: Colors.white,
        padding: EdgeInsets.zero,
        alignment: Alignment.center,
        shape: const CircleBorder(
          side: BorderSide(
            width: 1,
            color: Color(0xFF9B9B9B),
          ),
        ),
      ),
      onPressed: () {},
      child: Icon(
        icon,
        color: const Color(0xFF9B9B9B),
      ),
    );
  }
}