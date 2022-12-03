
import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/Screen_Components/BlackLastLine.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page2_SendMoney/ModalBottomSheet/FirstContainerInModalBottomSheet.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page2_SendMoney/ModalBottomSheet/SecondContainerInModalBottomSheet.dart';
import 'package:sarahalgodah_project2/constant.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showModalBottomSheet(
            backgroundColor: widgetGroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(top: Radius.circular(40)),
            ),
            context: context,
            builder: (BuildContext context) {
              return Container(
                  height: 400,
                  child: Column(
                    children: [
                      FirstContainerInModalBottomSheet(),
                      SecondContainerInModalBottomSheet(),
                      
                    ],
                  ));
            });
      },
      child: const Text(
        "\$${213.55}",
        style: TextStyle(color: primaryTextColor, fontSize: 50),
      ),
    );
  }
}
