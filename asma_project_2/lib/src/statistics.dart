import 'package:asma_project_2/componts/IncomeAndExpenditureCard.dart';
import 'package:asma_project_2/componts/chart.dart';
import 'package:asma_project_2/src/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
      appBar: AppBar(
        title: Text(
          "Statistics",
          style: TextStyle(color: Color(0xFF283B51), fontSize: 25),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: ((context) => home())));
          },
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              //
              //
              //
              child: Icon(
                Icons.keyboard_arrow_left_sharp,
                color: Color(0xFF292D32),
              ),
              padding: EdgeInsets.all(10),
              height: 47,
              width: 47,
              decoration: BoxDecoration(
                color: Color(0xFFD0DAE6),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              child: Icon(
                Icons.keyboard_control_outlined,
                color: Color(0xFF292D32),
              ),
              padding: EdgeInsets.all(10),
              height: 47,
              width: 47,
              decoration: BoxDecoration(
                color: Color(0xFFD0DAE6),
                shape: BoxShape.circle,
              ),
            ),
          )
        ],
        backgroundColor: Color(0xFFF5F7FA),
        shadowColor: Color(0xFFE5E5E5),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Column(children: [
            chart(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IncomeAndExpenditureCard(
                  ProcessNname: 'Income',
                  IconName: Icons.south_east,
                  nember: "\$25.245",
                ),
                IncomeAndExpenditureCard(
                  ProcessNname: 'Expenditure',
                  IconName: Icons.call_made,
                  nember: "\$47.51",
                )
              ],
            ),
          ])
        ],
      ),
    );
  }
}
