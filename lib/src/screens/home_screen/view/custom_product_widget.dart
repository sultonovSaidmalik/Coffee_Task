import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../common/model/product.dart';

class CustomProductWidget extends StatelessWidget {
  final ProductModel product;
  final Color color;


  const CustomProductWidget(
      {Key? key,
        required this.product,
        required this.color

      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5 , bottom: 5),
      child: Card(
        elevation: 8,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Star
               Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const Icon(Icons.star , color: Colors.yellow,),
                      const SizedBox(width: 8),
                      Text(
                        product.rating.rate.toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              /// Image Product
              Center(
                child: CachedNetworkImage(
                  width: 100,
                  height: 150,
                  imageUrl: product.image,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: CircularProgressIndicator.adaptive(
                            value: downloadProgress.progress,
                            strokeWidth: 1,
                          ),
                        ),
                      ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              /// Product Title and Categoriy
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 8),
                  child: Text(
                    product.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color(0xFF2F2D2C),
                      fontSize: 16,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              /// Product Title and Categoriy
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  product.category.toUpperCase(),
                  style: const TextStyle(
                    color: Color(0xFF9B9B9B),
                    fontSize: 12,
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              /// Product price
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10 ,top: 15),
                    child: Text(
                      '\$ ${product.price}',
                      style: TextStyle(
                        color: Color(0xFF2F4B4E),
                        fontSize: 18,
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, top: 8),
                    child: IconButton(
                      onPressed: (){},
                      icon: SizedBox(
                        height: 35,
                        width: 35,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: const Color(0xFFC67C4E),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
