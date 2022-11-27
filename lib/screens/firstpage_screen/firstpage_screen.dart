import 'package:flutter/src/widgets/framework.dart';
import 'package:leaflet/screens/components/left_form.dart';
import 'package:leaflet/screens/components/main_form.dart';

class FirstpageScreen extends StatelessWidget {
  FirstpageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainForm(
      left_widget: LeftForm(),
      right_widget: LeftForm(),
    );
  }
}
