import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:leaflet/screens/firstpage_screen/firstpage_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Suit',
        backgroundColor: Colors.white,
      ),
      home: FirstpageScreen(),
    );
  }
}
