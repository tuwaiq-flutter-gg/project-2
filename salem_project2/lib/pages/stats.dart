import 'package:flutter/material.dart';
import 'package:salem_project2/components/stats1.dart';
import 'package:salem_project2/components/stats2.dart';

class Stats extends StatelessWidget {
  final String balance;
  const Stats({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: const Text(
          'Statistics',
          style: TextStyle(
            color: Color.fromARGB(255, 30, 53, 78),
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 19),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 167, 174, 177),
            ),
            child: IconButton(
              color: Colors.black,
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Color(0xffE5E5E5),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Stats1(balance: balance),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Stats2(
                  title: 'Income',
                  amount: "\$25.245",
                ),
                Stats2(
                  title: 'Expenditure',
                  amount: "\$47.51",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
