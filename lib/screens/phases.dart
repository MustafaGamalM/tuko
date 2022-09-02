import 'package:flutter/material.dart';

import '../model/numbers_model.dart';
import '../widgets/widget.dart';

class PhasesPageScreen extends StatelessWidget {
  List<Phases> phases=
  [
    Phases(jpphase:'a' ,phase: 'Are you coming'),
    Phases(jpphase:'a' ,phase: 'Don\'t forget to subscribe'),
    Phases(jpphase:'a' ,phase: 'How are your feeling'),
    Phases(jpphase:'a' ,phase: 'I love anime'),
    Phases(jpphase:'a' ,phase: 'I love programming'),
    Phases(jpphase:'a' ,phase: 'Programming is easy'),
    Phases(jpphase:'a' ,phase: 'What is your name'),
    Phases(jpphase:'a' ,phase: 'Where are you going'),
    Phases(jpphase:'a' ,phase: 'Yes i am coming'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(title: Text('Phases'), backgroundColor: Color(0xffd7b86e)),
      body: ListView.separated(
          separatorBuilder: (context,index)=>Divider(color: Colors.white,height: .1),
          itemCount: phases.length,
          itemBuilder: (context, index) {
            return Containerb(soundIndex: index,phases: phases[index],isphase: true);
          }),
    );
  }
}
