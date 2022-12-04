import 'package:flutter/material.dart';
import 'package:project_2/objects/Balsnce.dart';
import 'package:project_2/objects/Graph.dart';
import 'package:project_2/objects/transactions.dart';

class Statist extends StatelessWidget {
  const Statist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statist",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff283B51))),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz_rounded,
                color: Color(0xFF283B51),
              )),
        ],
        elevation: 0,
        backgroundColor: Color(0xFFE5E5E5),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 25, right: 25),
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(child: YourBalance()),
            SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Graph(Day: "Mon", GraphColor: 0xFF283B51, Number: 100),
                    Graph(Day: "Tue", GraphColor: 0xFFD3DDE9, Number: 200),
                    Graph(Day: "Wed", GraphColor: 0xFF283B51, Number: 90),
                    Graph(Day: "Tus", GraphColor: 0xFF283B51, Number: 150),
                    Graph(Day: "Fri", GraphColor: 0xFF283B51, Number: 50),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Transactions(
                  state: "Income",
                  images: "images/Topup.png",
                  amount: "234.20",
                ),
                SizedBox(
                  width: 25,
                ),
                Transactions(
                  state: "Expenditure",
                  amount: "25.298",
                  images: "images/withdraw.png",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
