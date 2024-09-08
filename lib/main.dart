import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemenagment_one/screens/container_opacity.dart';
import 'package:getx_statemenagment_one/screens/favourite_app_example.dart';
import 'package:getx_statemenagment_one/screens/image_picker_screen.dart';
import 'package:getx_statemenagment_one/screens/login_api_screen.dart';
import 'package:getx_statemenagment_one/screens/switch_button_example.dart';

import 'screens/counter_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:  LoginApiScreen(),
    );
  }
}

