import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePageIcon extends StatelessWidget {
  const HomePageIcon({
    super.key,
    this.color,
    this.text,
  });
  final color;
  final text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            child: Icon(Icons.image),
            padding: EdgeInsets.all(10),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
          Text(" ${text}"),
        ],
      ),
    );
  }
}
