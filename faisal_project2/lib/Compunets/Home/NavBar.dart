import 'package:faisal_project2/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return (Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "~Hi Faisal",
                style: TextStyle(color: bb, fontSize: 25),
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                //    decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset("images/1.png"),
                // child: ImageIcon(
                //   AssetImage("images/1.png"),
                //   color: bb,
                // ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
