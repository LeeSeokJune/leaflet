import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'screens/firstpage_screen/firstpage_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Suit',
        focusColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      home: FirstpageScreen(),
    );
  }
}
