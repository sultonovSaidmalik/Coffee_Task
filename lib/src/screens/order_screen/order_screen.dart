import 'package:flutter/material.dart';
import 'view/custom_button.dart';
import 'view/custom_coffee.dart';
import 'view/custom_text.dart';
import 'view/top_bottom.dart';
import 'view/widgets.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  bool isDeliver = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Order",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF2F2D2C),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Top Button
              const TopBottom(),
              const SizedBox(height: 30),

              /// Title
              const CustomText(
                color: Color(0xFF2F2D2C),
                fontsize: 21,
                text: "Delivery Address",
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 14),

              /// User Name
              const CustomText(
                color: Color(0xFF2F2D2C),
                fontsize: 15,
                text: "Jl. Kpg Sutoyo",
              ),
              const SizedBox(height: 14),

              /// Description
              const CustomText(
                color: Color(0xFF808080),
                fontsize: 14,
                padding: EdgeInsets.only(left: 15, top: 15),
                text: "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.s",
              ),
              const SizedBox(height: 12),

              /// Button Edit
               const Row(
                children: [
                  SizedBox(width: 15),
                  CustomButton(
                    imageUrl: "assets/icons/ic_edit.png",
                    text: "Edit Address",
                    width: 150,
                  ),
                  SizedBox(width: 15),
                  CustomButton(
                    imageUrl: "assets/icons/ic_note.png",
                    text: "Add Note",
                    width: 140,
                  ),
                ],
              ),
              const SizedBox(height: 12),

              /// Line
              const Divider(
                color: Color(0xFFEAEAEA),
                endIndent: 15,
                indent: 15,
                thickness: 1.5,
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:
                      List.generate(1, (index) => const CustomCoffee()).toList(),
                ),
              ),
              const Divider(
                color: Color(0xFFEAEAEA),
                endIndent: 15,
                indent: 15,
                thickness: 2,
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                child: ListTile(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      side: BorderSide(
                        color: Color(0xFF9B9B9B),
                        width: 1,
                      )),
                  leading: const Image(
                    image: AssetImage(
                      "assets/icons/ic_discount.png",
                    ),
                    height: 40,
                  ),
                  title: const Text(
                    "1 Discount is applied",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF2F2D2C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      )),
                ),
              ),
              const SizedBox(height: 18),
              const CustomText(
                color: Color(0xFF2F2D2C),
                fontsize: 18,
                text: "Payment Summary",
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 9),
              const Price(),
              const SizedBox(height: 14),
              const Fee(),
              const SizedBox(height: 10),
              const Divider(
                color: Color(0xFFEAEAEA),
                endIndent: 15,
                indent: 15,
                thickness: 2,
              ),
              const SizedBox(height: 10),
              const Total(),
              const SizedBox(height: 15),
              const Cash(),
              const SizedBox(height: 15),
              const OrderButton()
            ],
          ),
        ),
      ),
    );
  }
}