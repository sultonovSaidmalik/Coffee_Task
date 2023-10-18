import 'package:flutter/material.dart';
import 'package:ish_task/src/screens/home_screen/home_screen.dart';
import 'view/page_navigator.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
        ],
      ),
      bottomNavigationBar: const PageNavigator(),
    );
  }
}
