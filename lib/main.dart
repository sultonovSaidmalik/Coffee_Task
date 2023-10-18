import 'package:flutter/material.dart';
import 'package:ish_task/app.dart';

import 'src/core/service_locator.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const TaskApp());
}
