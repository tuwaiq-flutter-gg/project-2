import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Container(
              height: 47,
              width: 47,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xffD0DAE6)),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Image.asset("images/arrow-left.png"),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 285),
          child: Container(
              height: 47,
              width: 47,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xffD0DAE6)),
              child: Image.asset("images/more-horizontal.png")),
        ),
      ],
    );
  }
}
