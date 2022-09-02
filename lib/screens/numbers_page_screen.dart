
import 'dart:ui';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import '../model/numbers_model.dart';
import '../widgets/widget.dart';
class NumbersPageScreen extends StatelessWidget {
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
List<Number> NumList =
[
    Number(
        jpnum: 'ichi',
        image: 'assets/images/numbers/number_one.png',
        title: 'one'),
    Number(
        jpnum: 'ichi',
        image: 'assets/images/numbers/number_two.png',
        title: 'two'),
    Number(
        jpnum: 'ichi',
        image: 'assets/images/numbers/number_three.png',
        title: 'three'),
    Number(
        jpnum: 'ichi',
        image: 'assets/images/numbers/number_four.png',
        title: 'four'),
    Number(
        jpnum: 'ichi',
        image: 'assets/images/numbers/number_five.png',
        title: 'five'),
    Number(
        jpnum: 'ichi',
        image: 'assets/images/numbers/number_six.png',
        title: 'six'),
    Number(
        jpnum: 'ichi',
        image: 'assets/images/numbers/number_seven.png',
        title: 'seven'),
    Number(
        jpnum: 'ichi',
        image: 'assets/images/numbers/number_eight.png',
        title: 'eight'),
    Number(
        jpnum: 'ichi',
        image: 'assets/images/numbers/number_nine.png',
        title: 'nine'),
    Number(
        jpnum: 'ichi',
        image: 'assets/images/numbers/number_ten.png',
        title: 'ten'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Numbers',), backgroundColor: Color(0xffd7b86e),),
      body: ListView.separated(
          separatorBuilder: (context,index)=>Divider(color: Colors.white,height: .1),
          itemCount: NumList.length,
          itemBuilder: (context, index) {
            return Containerb(soundIndex: index,numbermodelNumber: NumList[index],isNumber: true);
          }),
    );
  }
}
