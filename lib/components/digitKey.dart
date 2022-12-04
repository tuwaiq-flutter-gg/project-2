import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DigitKey extends StatelessWidget {
  const DigitKey({super.key, required this.keyValue});

  final String keyValue;
  @override
  Widget build(BuildContext context) {
    return keyValue != "delete"
        ? Container(
            alignment: Alignment.center,
            child: Text(
              keyValue,
              style: const TextStyle(
                color: Color(0xFF283B51),
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        : Container(
            alignment: Alignment.center,
            child: SvgPicture.asset("assets/icons/delete.svg"),
          );
  }
}
