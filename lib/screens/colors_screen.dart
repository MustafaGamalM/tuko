
import 'package:flutter/material.dart';

import '../model/numbers_model.dart';
import '../widgets/widget.dart';


class ColorsPageScreen extends StatelessWidget {
   List<ColorsItem> ColorsItems=
   [
     ColorsItem(image:'assets/images/colors/color_black.png' ,color:'black' ,jpcolor:'a' ),
     ColorsItem(image:'assets/images/colors/color_brown.png' ,color:'brown' ,jpcolor:'a' ),
     ColorsItem(image:'assets/images/colors/color_dusty_yellow.png' ,color:'dusty yellow' ,jpcolor:'a' ),
     ColorsItem(image:'assets/images/colors/color_gray.png' ,color:'gray' ,jpcolor:'a' ),
     ColorsItem(image:'assets/images/colors/color_green.png' ,color:'green' ,jpcolor:'a' ),
     ColorsItem(image:'assets/images/colors/color_red.png' ,color:'red' ,jpcolor:'a' ),
     ColorsItem(image:'assets/images/colors/color_white.png' ,color:'white' ,jpcolor:'a' ),
     ColorsItem(image:'assets/images/colors/yellow.png' ,color:'yellow' ,jpcolor:'a' ),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(title: Text('Colors'), backgroundColor: Color(0xffd7b86e)),
      body: ListView.separated(
        separatorBuilder: (context,index)=>Divider(color: Colors.grey[200],height: .1),
          itemCount: ColorsItems.length,
          itemBuilder: (context, index) {
            return Containerb(soundIndex: index,coloritem: ColorsItems[index],isColor: true);
          }),
    );
  }
}
