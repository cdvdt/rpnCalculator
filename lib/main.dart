import 'package:flutter/material.dart';
import 'package:rpn_calculator/model/CustomTheme.dart';
import 'package:rpn_calculator/view/main_view.dart';

void main() {
  runApp(const RpnCalculatorApp());
}

class RpnCalculatorApp extends StatefulWidget {
  const RpnCalculatorApp({Key? key}) : super(key: key);

  @override
  State<RpnCalculatorApp> createState() => _RpnCalculatorAppState();
}

class _RpnCalculatorAppState extends State<RpnCalculatorApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: CustomTheme.darkTheme.theme,
      theme: CustomTheme.lightTheme.theme,
      home: MainView(),
    );
  }
}