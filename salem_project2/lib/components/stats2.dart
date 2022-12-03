import 'package:flutter/material.dart';

class Stats2 extends StatelessWidget {
  final String title;
  final String amount;

  Stats2({super.key, required this.amount, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width / 2.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(255, 171, 188, 196),
        ),
        padding: EdgeInsets.all(20),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Icon(
            Icons.arrow_downward,
            color: Colors.black,
            size: 35,
          ),
          Text(
            title,
            style: TextStyle(
              color: Color.fromARGB(255, 9, 38, 73),
              fontSize: 18,
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Text(
            amount,
            style: TextStyle(
              color: Color(0xff283B51),
              fontSize: 23,
            ),
          ),
        ]),
      ),
    );
  }
}
