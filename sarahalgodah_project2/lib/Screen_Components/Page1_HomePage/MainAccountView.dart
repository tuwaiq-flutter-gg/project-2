import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page1_HomePage/MainAccountButton.dart';
import 'package:sarahalgodah_project2/constant.dart';

class MainAccountView extends StatelessWidget {
  MainAccountView({
    super.key,
    this.buttonTitle,
    this.buttonImage,
    this.buttonColor,
    this.textColor,
  });

  String? buttonTitle;
  String? buttonImage;
  Color? buttonColor;
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.28,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: widgetGroundColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Main account",
                style: TextStyle(color: secondaryTextColor, fontSize: 18),
              ),
              const Text(
                "\$154.723.00",
                style: TextStyle(color: primaryTextColor, fontSize: 33),
              ),
              Row(
                children: const [
                  MainAccountButton(
                    buttonTitle: "Topup",
                    buttonColor: primaryColor,
                    buttonImage: "images/topup.png",
                    textColor: Colors.white,
                  ),
                  MainAccountButton(
                    buttonTitle: "Withdraw",
                    buttonColor: Colors.white,
                    buttonImage: "images/withdraw.png",
                    textColor: primaryColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
