import 'package:flutter/material.dart';

class Graph extends StatelessWidget {
  const Graph(
      {super.key,
      required this.Day,
      required this.GraphColor,
      required this.Number});
  final String Day;
  final int GraphColor;
  final double Number;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      padding: EdgeInsets.only(left: 25, right: 25),
      alignment: Alignment.centerLeft,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              height: Number,
              width: 40,
              color: Color(GraphColor),
              padding: EdgeInsets.only(right: 22, bottom: 16),
            ),
          ),
          Text(Day)
        ],
      ),
    );
  }
}
