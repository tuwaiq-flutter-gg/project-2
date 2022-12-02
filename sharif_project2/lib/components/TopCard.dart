// ignore_for_file: file_names, prefer_const_constructors,prefer_const_literals_to_create_immutables, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sharif_project2/src/SendTo.dart';
import 'package:sharif_project2/src/statistics.dart';

class TopCard extends StatelessWidget {
  final double balance;
  final balanceFormat = NumberFormat.simpleCurrency();

  TopCard({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(MediaQuery.of(context).size.width / 28),
        color: Color.fromARGB(255, 138, 202, 232),
      ),
      height: MediaQuery.of(context).size.width / 1.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Main account',
            style: TextStyle(
              color: Color(0xff446388),
              fontSize: 18,
            ),
          ),
          Text(
            balanceFormat.format(balance),
            style: TextStyle(
              color: Color(0xff283B51),
              fontSize: 36,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Statistics(balance: balance),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                        (MediaQuery.of(context).size.width - 90) / 2,
                        (MediaQuery.of(context).size.width / 2) / 3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width / 28),
                    ),
                    backgroundColor: Color(0xff283B51),
                    alignment: Alignment.center,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'TopUp',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Icon(
                        Icons.trending_up_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Statistics(balance: balance),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                        (MediaQuery.of(context).size.width - 90) / 2,
                        (MediaQuery.of(context).size.width / 2) / 3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width / 28),
                    ),
                    backgroundColor: Colors.white,
                    alignment: Alignment.center,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Withdraw',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Icon(
                        Icons.trending_down_outlined,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
