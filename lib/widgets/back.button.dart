import 'package:flutter/material.dart';
import 'package:kiosk_new/utils/mycolors.dart';
import 'package:kiosk_new/utils/mystrings.dart';
import 'package:kiosk_new/widgets/image.asset.widget.dart';
import 'package:kiosk_new/widgets/texts.dart';

Widget backBtn({onPress, onPress2, isAutoPage}) {
  return InkWell(
    onTap: () {
      if (isAutoPage == false) {
        onPress();
      } else {
        onPress2();
      }
    },
    child: Container(
      alignment: Alignment.center,
      height: 55,
      width: 135,
      decoration: BoxDecoration(
        color: MyColor.bedge,
        borderRadius: BorderRadius.only(
          topLeft: isAutoPage == false
              ? Radius.circular(StringFactory.padding032)
              : Radius.circular(0),
          bottomRight: isAutoPage == false
              ? Radius.circular(StringFactory.padding032)
              : Radius.circular(0),
          topRight: isAutoPage == true
              ? Radius.circular(StringFactory.padding032)
              : Radius.circular(0),
          bottomLeft: isAutoPage == true
              ? Radius.circular(StringFactory.padding032)
              : Radius.circular(0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          imageWithAsset(
              height: 35, width: 35, imagePath: StringFactory.logo_back),
          SizedBox(
            width: StringFactory.padding,
          ),
          textCustom(isBold: false, text: 'BACK', size: 16)
        ],
      ),
    ),
  );
}
