

import 'package:flutter/material.dart';

import '../model/numbers_model.dart';
import '../widgets/widget.dart';

class FamilyMembesPageScreen extends StatelessWidget {
  List<Family> family=[
    Family(jpname: 'aaa',name: 'daughter',image: 'assets/images/family_members/family_daughter.png'),
    Family(jpname: 'aa',name: 'father',image: 'assets/images/family_members/family_father.png'),
    Family(jpname: 'aa',name: 'grandfather',image: 'assets/images/family_members/family_grandfather.png'),
    Family(jpname: 'a',name: 'grandmother',image: 'assets/images/family_members/family_grandmother.png'),
    Family(jpname: 'a',name: 'mother',image: 'assets/images/family_members/family_mother.png'),
    Family(jpname: 'a',name: 'brother',image: 'assets/images/family_members/family_older_brother.png'),
    Family(jpname: 'a',name: 'sister',image: 'assets/images/family_members/family_older_sister.png'),
    Family(jpname: 'a',name: 'son',image: 'assets/images/family_members/family_son.png'),
    Family(jpname: 'a',name: 'brother',image: 'assets/images/family_members/family_younger_brother.png'),
    Family(jpname: 'a',name: 'sister',image: 'assets/images/family_members/family_younger_sister.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(title: Text('Family Members'), backgroundColor: Color(0xffd7b86e)),
      body: ListView.separated(
          separatorBuilder: (context,index)=>Divider(color: Colors.white,height: .1),
          itemCount: family.length,
          itemBuilder: (context, index) {
            return Containerb(soundIndex: index,family: family[index],isFamily: true);
          }),
    );
  }
}
