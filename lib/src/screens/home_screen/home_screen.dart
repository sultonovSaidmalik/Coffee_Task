import 'package:flutter/material.dart';
import 'view/grid_view_widget.dart';
import 'view/product_banner.dart';
import 'view/tap_bar_widget.dart';
import 'view/title_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Stack(
            children: [
              Column(
                children: [
                  /// Search
                  const TitleWidgets(),
                  Expanded(
                    flex: 8,
                    child: SizedBox(
                      height: MediaQuery.sizeOf(context).height,
                      width: MediaQuery.sizeOf(context).width,
                      child: const ColoredBox(
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(height: 100),
                            /// TapBar
                            TapBarWidgets(),
                            /// Product menu
                            GridViewWidget(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 210),
                child: AppBanner(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
