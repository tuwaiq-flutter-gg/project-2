import 'package:faisal_project2/Compunets/Spaces.dart';
import 'package:faisal_project2/Compunets/Statics/stats.dart';
import 'package:faisal_project2/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class fulstat extends StatelessWidget {
  const fulstat({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        height: 350,
        width: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            spaces(size: 5),
            Container(
              height: 75,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffF5F7FA)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Your Balance "),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "\$157,723,09",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
            spaces(size: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 5,
                ),
                stats(day: "Sunday", size: 120),
                stats(day: "Monday", size: 150),
                stats(day: "Tuesday", size: 180),
                stats(day: "Wensdey", size: 90),
                stats(day: "Thurseday", size: 200),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            spaces(size: 10)
          ],
        ),
      ),
    );
  }
}
