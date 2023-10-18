import 'package:flutter/material.dart';
import 'package:ish_task/src/screens/order_screen/view/custom_text.dart';

import '../../map_screen/map_screen.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MapScreen(),
          ),
        );
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 55,
        decoration: ShapeDecoration(
          color: const Color(0xFFC67C4E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: const Center(
          child: Text(
            'Order',
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
    );
  }
}

class Cash extends StatelessWidget {
  const Cash({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        const Image(
          image: AssetImage(
            "assets/icons/ic_moneys.png",
          ),
          height: 30,
        ),
        const SizedBox(width: 20),
        Container(
          height: 30,
          width: 70,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            color: Color(0xFFC67C4E),
          ),
          child: const Center(
            child: CustomText(
              color: Colors.white,
              fontsize: 15,
              text: "Cash",
              padding: EdgeInsets.zero,
            ),
          ),
        ),
        const SizedBox(width: 10),
        const CustomText(
          color: Color(0xFF2F2D2C),
          fontsize: 15,
          text: "\$ 5.53 ",
          padding: EdgeInsets.zero,
        ),
        const Spacer(),
        const CircleAvatar(
          radius: 13,
          backgroundColor: Color(0xFF808080),
          child: Center(
            child: Icon(
              Icons.more_horiz,
              size: 18,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}

class Total extends StatelessWidget {
  const Total({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          color: Color(0xFF2F2D2C),
          fontsize: 18,
          text: "Total Payment",
        ),
        CustomText(
          color: Color(0xFF2F2D2C),
          fontsize: 18,
          padding: EdgeInsets.only(right: 15, top: 15),
          text: "\$5.53",
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}

class Price extends StatelessWidget {
  const Price({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          color: Color(0xFF2F2D2C),
          fontsize: 18,
          text: "Price",
        ),
        CustomText(
          color: Color(0xFF2F2D2C),
          fontsize: 18,
          padding: EdgeInsets.only(right: 15, top: 15),
          text: "\$4.53",
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}

class Fee extends StatelessWidget {
  const Fee({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomText(
          color: Color(0xFF2F2D2C),
          fontsize: 18,
          text: "Delivery Fee",
        ),
        RichText(
          text: const TextSpan(
            style: TextStyle(
              color: Color(0xFF2F2D2C),
              fontSize: 15,
            ),
            children: [
              TextSpan(
                text: "\$2.0",
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              TextSpan(
                text: " \$1.0    ",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}