import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Grid_Home extends StatelessWidget {
  const Grid_Home({super.key, required this.imag, required this.name, required this.date, required this.prise});
  final String imag;
  final String name;
  final String date;
  final String prise;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: 327,
        height: 83,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Color(0xffFFFFFF)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(6),
              child: Container(
                height: 63,
                width: 63,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffEBF2F9),
                ),
                child: Image.asset(
                  imag.toString(),
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 18),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Text(name.toString(), style: TextStyle(fontSize: 18)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(date.toString(),
                          style: TextStyle(
                              fontSize: 10,
                              color: Color(0xffA3B8D1),
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text(
                prise.toString(),
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
