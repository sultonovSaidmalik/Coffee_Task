import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ish_task/src/screens/main_screen/main_screen.dart';

import '../../blocs/home_bloc/home_bloc.dart';
import '../../core/service_locator.dart';
import 'view/google_button.dart';
import 'view/text_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          /// Image Coffee
          Column(
            children: [
              Image.asset(
                "assets/images/img.png",
                height: size.height * .7,
                width: size.width,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Container(
                  color: Colors.black,
                ),
              )
            ],
          ),
          /// Text Widget
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: size.height * .6,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    /// Title
                    const TitleWidget(),
                    const SizedBox(height: 17),
                    /// Description
                    const TextWidget(),
                    const SizedBox(height: 30),
                    /// Google Button
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => BlocProvider(
                            create: (context) =>
                            locator<HomeBloc>()..add(const HomeGetAllProduct()),
                            child: const MainScreen(),
                          ),
                        ),
                      ),
                      child: const GoogleButton(),
                    ),
                    // const SizedBox(height: 50)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
