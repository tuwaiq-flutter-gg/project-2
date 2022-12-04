import 'package:faisal_project2/Compunets/Home/Account.dart';
import 'package:faisal_project2/Compunets/Home/Activity.dart';
import 'package:faisal_project2/Compunets/Home/NavBar.dart';
import 'package:faisal_project2/Compunets/Spaces.dart';
import 'package:faisal_project2/Compunets/Home/homeicons.dart';
import 'package:faisal_project2/main.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return (ListView(padding: EdgeInsets.all(25), children: [
      NavBar(),
      Account(),
      spaces(size: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Recent Activity"),
          Text("See All"),
        ],
      ),
      Activity(
          img: "images/figma.png",
          name: "Figma",
          price: "\$20.1",
          date: "10 October 2022"),
      Activity(
          img: "images/netflix.png",
          name: "Netflix",
          price: "\$14.5",
          date: "07 August 2022"),
      spaces(size: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Request Send Money",
            style: TextStyle(color: bb, fontSize: 20),
          ),
        ],
      ),
      homeicons(),
    ]));
  }
}
