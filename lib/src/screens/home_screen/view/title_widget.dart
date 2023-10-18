import 'package:flutter/material.dart';
class TitleWidgets extends StatelessWidget {
  const TitleWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: const Color(0xFF131313),
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: -0.24,
                        ),
                      ),
                      Text(
                        'Bilzen,Tanjungbalai',
                        style: TextStyle(
                          color: Color(0xFFDDDDDD),
                          fontSize: 14,
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25, top: 60),
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/img_1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 55,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Color(0xFF313131),
                ),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Container(
                        width: 44,
                        height: 44,
                        padding: const EdgeInsets.all(12),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFC67C4E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Image(
                          image: AssetImage(
                              "assets/icons/ic_setting.png"),
                        ),
                      ),
                    ),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(
                          top: 15, bottom: 15, left: 15, right: 15),
                      child: Image(
                        image:
                        AssetImage("assets/icons/ic_search.png"),
                      ),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF313131),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    hintText: "Search coffees",
                  ),
                  obscureText: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
