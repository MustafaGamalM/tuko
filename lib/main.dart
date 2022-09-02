import 'package:flutter/material.dart';
import 'package:tuko/screens/home_screen.dart';

void main() {
  runApp(TokuApp());
}

class TokuApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tuko',
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}
