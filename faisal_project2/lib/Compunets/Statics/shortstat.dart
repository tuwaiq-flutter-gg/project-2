import 'package:faisal_project2/Compunets/Spaces.dart';
import 'package:faisal_project2/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class shortstat extends StatelessWidget {
  const shortstat({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 175,
          width: 125,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.flight_land,
                color: dd,
              ),
              spaces(size: 10),
              Text("Income"),
              Text("________________"),
              spaces(size: 10),
              Text(
                "\$25.424",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(15), color: dd),
        ),
        Container(
          height: 175,
          width: 125,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.flight_takeoff,
                color: dd,
              ),
              spaces(size: 10),
              Text("Expenditure"),
              Text("________________"),
              spaces(size: 10),
              Text(
                "\$47.54",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(15), color: dd),
        ),
      ],
    );
  }
}
