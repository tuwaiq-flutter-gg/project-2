import 'package:faisal_project2/Compunets/Spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class stats extends StatelessWidget {
  const stats({super.key, required this.day, required this.size});
  final String day;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: size,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(0xffD3DDE9),
          ),
        ),
        spaces(size: 5),
        Text(day.toString()),
      ],
    );
  }
}
