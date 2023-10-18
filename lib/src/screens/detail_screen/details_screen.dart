import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ish_task/src/screens/detail_screen/view/product_rating.dart';
import 'package:ish_task/src/screens/detail_screen/view/size_text.dart';
import 'package:ish_task/src/screens/order_screen/order_screen.dart';
import '../../common/model/product.dart';
import 'view/button_cart.dart';
import 'view/name_size.dart';
import 'view/product_category.dart';
import 'view/product_description.dart';
import 'view/product_title.dart';
import 'view/text_description.dart';

class DetailsScreen extends StatefulWidget {
  final ProductModel product;

  const DetailsScreen({super.key, required this.product});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// App Bar
      appBar: AppBar(
        title: const Text(
          'Detail',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF2F2D2C),
            fontSize: 20,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.heart,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          /// Product Image
          Expanded(
            flex: 3,
            child: Container(
              width: 315,
              height: 226,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.product.image),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),

          /// Product Text
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),

                /// Product Title
                ProductTitle(text: widget.product.title),
                const Spacer(),

                /// Product Category
                ProductCategory(text: widget.product.category.toUpperCase()),
                const Spacer(),

                /// Product Rating
                ProductRating(
                  text:
                      "${widget.product.rating.rate.toString()} (${widget.product.rating.count})",
                  onTap1: () {},
                  onTap2: () {},
                ),
                const Spacer(),

                /// Divider Line
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                const Spacer(),

                /// Text Description
                const TextDescription(text: "Description"),
                const Spacer(),

                /// Product Description
                ProductDescription(text: widget.product.description),
                const Spacer(),

                /// Size Text
                const SizeText(text: 'Size'),
                const Spacer(),

                /// Size Name
                const NameSize(),
                const Spacer(),

                /// Bottom Button
                ButtonCart(
                  text: "\$ ${widget.product.price}",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrderScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
