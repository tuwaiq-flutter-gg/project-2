import 'package:flutter/material.dart';
import 'package:salem_project2/components/statscontainers.dart';

class Stats1 extends StatelessWidget {
  final String balance;

  Stats1({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        height: MediaQuery.of(context).size.height / 2,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 223, 233, 238),
              ),
              height: MediaQuery.of(context).size.width / 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Balance',
                    style: TextStyle(
                      color: Color.fromARGB(255, 35, 54, 77),
                    ),
                  ),
                  Text(
                    balance,
                    style: TextStyle(
                      color: Color(0xff283B51),
                      fontSize: 23,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StatsContainers(
                    day: 'Mon',
                    lvl: 7,
                  ),
                  StatsContainers(
                    day: 'Tue',
                    lvl: 6,
                  ),
                  StatsContainers(
                    day: 'Wed',
                    lvl: 4,
                  ),
                  StatsContainers(
                    day: 'Thu',
                    lvl: 9,
                  ),
                  StatsContainers(
                    day: 'Fri',
                    lvl: 7,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
