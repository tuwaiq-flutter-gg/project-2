// ignore_for_file: file_names, prefer_const_constructors,prefer_const_literals_to_create_immutables, library_private_types_in_public_api, must_be_immutable
import 'package:flutter/material.dart';

class StatisticColumn extends StatelessWidget {
  final String name;
  final int percentage;
  final bool highlighted;

  const StatisticColumn(
      {super.key,
      required this.name,
      required this.percentage,
      required this.highlighted});

  @override
  Widget build(BuildContext context) {
    return Column(
      verticalDirection: VerticalDirection.up,
      children: [
        Text(name),
        Container(
          height:
              (MediaQuery.of(context).size.height / 3.3) * (percentage / 100),
          width: 35,
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width / 90),
            color: highlighted
                ? Color(0xff283B51)
                : Color.fromARGB(255, 189, 214, 225),
          ),
        ),
      ],
    );
  }
}
