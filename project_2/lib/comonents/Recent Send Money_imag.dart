import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Imag_from_last_row extends StatelessWidget {
  const Imag_from_last_row({super.key, required this.imag1});
  final String imag1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Container(
        width: 56,
        height: 56,
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: SizedBox(
            width: 56,
            height: 56,
            child: ClipOval(
              child: Image.asset(
                imag1.toString(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
