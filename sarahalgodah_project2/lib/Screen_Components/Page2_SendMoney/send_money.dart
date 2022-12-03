import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page2_SendMoney/SendDescription.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page2_SendMoney/SendMoneyAppBar.dart';
import 'package:sarahalgodah_project2/constant.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryGroundColor,
      body: ListView(children: [
        SendMoneyAppBar(
            onTapArrow_back: () {
              Navigator.pushReplacementNamed(context, "HomePage");
            },
            appBarPagetitle: "",
            onTapmore: () {
              Navigator.pushReplacementNamed(context, "Statistics");
            }),
        SendDescription(),
      ]),
    );
  }
}
