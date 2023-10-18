import 'package:flutter/material.dart';
import 'package:kiosk_new/utils/mycolors.dart';
import 'package:kiosk_new/widgets/texts.dart';

Future<bool?> showExitPopup(
    {BuildContext? context, onPressYes, onPressCancel}) async {
  return showDialog<bool?>(
      context: context!,
      builder: (_) {
        return AlertDialog(
          titlePadding: const EdgeInsets.all(16),
          actionsAlignment: MainAxisAlignment.spaceBetween,
          title: textCustomNormal(size: 22, text: 'Exit App?'),
          actions: [
            TextButton(
                onPressed: () async {
                  Navigator.of(context).pop();
                  onPressCancel();
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(5)),
                    backgroundColor:
                        MaterialStateProperty.all(MyColor.grey_tab)),
                child: Text(
                  'Cancel',
                  style: TextStyle(color: MyColor.black_text, fontSize: 25),
                )),
            const SizedBox(width: 25),
            TextButton(
                onPressed: () async {
                  onPressYes();
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(10)),
                    backgroundColor:
                        MaterialStateProperty.all(MyColor.pinkMain)),
                child: Text(
                  'Yes',
                  style: TextStyle(color: MyColor.white, fontSize: 25),
                ))
          ],
        );
      });
}
