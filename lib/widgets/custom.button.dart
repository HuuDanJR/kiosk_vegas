import 'package:flutter/material.dart';
import 'package:kiosk_new/utils/mycolors.dart';
import 'package:kiosk_new/utils/mystrings.dart';
import 'package:kiosk_new/widgets/onpress.widget.dart';

Widget customButton({width,height,isAutoBtn,imagePath,onPressCustomCheck}) {
  return customPressButton(
    padding: StringFactory.padding032,
              onPress: () {
                onPressCustomCheck();
              },
              width: width,
    child: Container(
      width:width,height:height,
      decoration: BoxDecoration(
              color: MyColor.white.withOpacity(.35),
              borderRadius: BorderRadius.circular(StringFactory.padding032)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height:75,width:75,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(isAutoBtn==false?  StringFactory.logo_check:StringFactory.logo_auto))
            ),
          )
          ,SizedBox(height: StringFactory.padding,),
          Text(isAutoBtn==false ? 'Custom\nCheck' : 'Auto\nCheck',textAlign: TextAlign.center,style:TextStyle(fontSize: 22,color:MyColor.grey))
        ],
      ),
    ),
  );
}
