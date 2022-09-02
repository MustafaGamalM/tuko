import 'package:flutter/material.dart';
import 'package:tuko/screens/phases.dart';

import 'colors_screen.dart';
import 'family_mambers_page_screen.dart';
import 'numbers_page_screen.dart';

class HomeScreen extends StatelessWidget {
  Widget ContainerBuilder(
      {required String text, required Color color, required Function() fun}) {
    return GestureDetector(
      onTap: fun,
      child: Container(
        padding:const EdgeInsets.only(left: 10),
        alignment: Alignment.centerLeft,
        height: 50,
        width: double.infinity,
        color: color,
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Toku'), backgroundColor: Color(0xfff5d494),elevation: 2,),
      body: Column(
        children: [
          ContainerBuilder(
              color: Colors.amber,
              text: 'Numbers',
              fun: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => NumbersPageScreen()));
              }),
          ContainerBuilder(
              color: Colors.green,
              text: 'FamilyMembers',
              fun: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => FamilyMembesPageScreen()));
              }),
          ContainerBuilder(
              color: Colors.purple,
              text: 'Colors',
              fun: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ColorsPageScreen()));
              }),
          ContainerBuilder(
              color: Colors.blue,
              text: 'Phases',
              fun: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => PhasesPageScreen()));
              }),
        ],
      ),
    );
  }
}
