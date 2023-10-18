import 'package:flutter/material.dart';
import 'package:kiosk_new/utils/mystrings.dart';
import 'package:kiosk_new/widgets/texts.dart';

Widget header({width,String? name,number,title,}) {
  return Container(
    width: width,
    padding: EdgeInsets.symmetric(horizontal: StringFactory.padding32),
    alignment: Alignment.topCenter,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            itemRow('Welcome, $title ${name!.toUpperCase()}',StringFactory.logo_user,),
            SizedBox(height: StringFactory.padding016,),
            itemRow('$number',StringFactory.logo_number),
          ],
        ),
        SizedBox(height: StringFactory.padding016,),
        Container(
          height: 125,
          width: 150,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(StringFactory.logo_img))),
        )
      ],
    ),
  );
}

Widget itemRow(text,image) {
  return Row(
    children: [
      Container(
        height: 37.5,
        width: 37.5,
        decoration: BoxDecoration(
          image:DecorationImage(image: AssetImage(image))
        ),
      ),
      SizedBox(width: StringFactory.padding016,),
      textCustom(text: text, size: 22,isBold: true),
    ],
  );
}
