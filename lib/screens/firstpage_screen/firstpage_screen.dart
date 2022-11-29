import 'package:flutter/src/widgets/framework.dart';
import 'package:leaflet/screens/components/left_form.dart';
import 'package:leaflet/screens/components/main_form.dart';
import 'package:leaflet/screens/firstpage_screen/components/first_right_form.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainForm(
      left_widget: LeftForm(),
      right_widget: FirstRight_form(),
    );
  }
}
