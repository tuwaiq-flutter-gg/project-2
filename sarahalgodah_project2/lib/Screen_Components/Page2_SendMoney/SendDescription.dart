import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page2_SendMoney/Currency.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page2_SendMoney/ModalBottomSheet.dart';
import 'package:sarahalgodah_project2/constant.dart';

class SendDescription extends StatelessWidget {
  SendDescription({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: const [
           Text(
            "Send to",
            style: TextStyle(color: secondaryTextColor, fontSize: 15),
          ),
           Text("Agus Samsudin",
              style: TextStyle(color: primaryTextColor, fontSize: 15)),
           SizedBox(
            height: 20,
          ),
           ModalBottomSheet(),
           SizedBox(
            height: 20,
          ),
           Currency()
        ],
      ),
    );
  }
}
