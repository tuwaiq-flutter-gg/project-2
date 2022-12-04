import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IncomeAndExpenditureCard extends StatelessWidget {
  const IncomeAndExpenditureCard(
      {super.key,
      required this.ProcessNname,
      required this.IconName,
      required this.nember});

  final String ProcessNname;
  final IconName;
  final String nember;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      height: 230, // (MediaQuery.of(context).size.height / 4),
      width: 160, //(MediaQuery.of(context).size.width / 2) - 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xFFDCE8F5),
      ),
      child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.baseline,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              IconName,
              size: 40,
            ),
            Text(
              ProcessNname,
              style: TextStyle(color: Color(0xFF446388), fontSize: 15),
            ),
            Divider(
              color: Color.fromARGB(255, 72, 74, 77),
            ),
            Text(nember,
                style: TextStyle(
                    color: Color(0xFF283B51),
                    fontSize: 20,
                    fontWeight: FontWeight.w600))
          ]),
    );
  }
}
