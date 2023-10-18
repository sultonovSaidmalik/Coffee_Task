import 'package:flutter/material.dart';
import 'package:ish_task/src/screens/splash_screen/splash_screen.dart';


class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.light,
      home: const SplashScreen(),
    );
  }
}