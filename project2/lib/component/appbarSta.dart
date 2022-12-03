import 'package:flutter/material.dart';

class AppBarSta extends StatelessWidget {
  const AppBarSta({super.key});

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
          padding: const EdgeInsets.only(left: 95, top: 25),
          child: Text(
            "Statistics",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xff283B51),
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 85),
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
