import 'package:flutter/material.dart';
import 'package:map_location_picker/map_location_picker.dart';

import 'view/text_map.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const BottomShit(),
      body:  Stack(
        children: [
          Column(
            children: [
              Image(
                image: const AssetImage("assets/images/img_4.png"),
                height: MediaQuery.sizeOf(context).height * 0.7,
                width: MediaQuery.sizeOf(context).width,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60 , left: 30 , right: 30 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: SizedBox(
                    height: 44,
                    width: 44,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                          color:  Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage("assets/icons/ic_arrow-left.png"),),
                        )
                    ),
                  ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: SizedBox(
                    height: 44,
                    width: 44,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:  Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(image: AssetImage("assets/icons/ic_gps.png"),),
                      )
                    ),
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
