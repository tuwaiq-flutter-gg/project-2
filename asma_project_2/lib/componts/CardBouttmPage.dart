import 'package:asma_project_2/componts/Icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardBouttmPage extends StatelessWidget {
  const CardBouttmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 10, left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Recent Send Money",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width - 33,
          height: MediaQuery.of(context).size.height / 9.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            HomePageIcon(
              color: Color(0xFFDCE8F5),
              text: "Agus",
            ),
            HomePageIcon(
              color: Color(0xFFFBE7D0),
              text: "Siti",
            ),
            HomePageIcon(
              color: Color(0xFFD6E3FC),
              text: "Udin",
            ),
            HomePageIcon(
              color: Color(0xFFDEC6FC),
              text: "Tina",
            ),
          ]),
        )
      ],
    );
  }
}
