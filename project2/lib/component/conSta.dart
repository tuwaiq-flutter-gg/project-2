import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConSta extends StatelessWidget {
  ConSta({super.key, this.h, this.c});
  double? h;
  Color? c;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h,
      width: 38,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(5), color: c),
    );
  }
}
