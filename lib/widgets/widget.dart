import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import '../model/numbers_model.dart';
import 'constants.dart';


AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
Widget Containerb({required int soundIndex,Number? numbermodelNumber,Phases? phases,ColorsItem? coloritem,
  Family? family,bool isFamily=false,bool isNumber=false,bool isColor=false,bool isphase=false,})
{
  return Container(
    height: 70,
    color: Color(0xCEEFD30E),
    child: Row(children: [
      Container(
          height: 70,
          color: isColor?Colors.grey[200]:Color(0xFFFFFFFF),
          child: Image.asset(isFamily?family!.image!:(isNumber)?
          numbermodelNumber!.image!:isColor==true||isphase==false?coloritem!.image!
              :
          'assets/images/family_members/family_daughter.png')),
      Padding(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(isFamily?family!.name!:(isNumber)?
            numbermodelNumber!.title!:isColor==true||isphase==false?
            coloritem!.color! :phases!.phase!),
         const   SizedBox(
              height: 5,
            ),
            Text(isFamily?family!.jpname!:(isNumber)?
            numbermodelNumber!.jpnum!:isColor==true||isphase==false?coloritem!.jpcolor!:phases!.jpphase!),
          ],
        ),
      ),
    const  Spacer(),
      IconButton(
          onPressed: () async {
            AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
            audioPlayer.open(Audio(isFamily?familyMembersSounds[soundIndex]:(isNumber)?numberSounds[soundIndex]:isColor==true||isphase==false?colorSounds[soundIndex]:PhasesSounds[soundIndex]));
          },
          icon: Icon(Icons.forward))
    ]),
  );
}