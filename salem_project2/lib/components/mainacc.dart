import 'package:flutter/material.dart';

class MainAcc extends StatelessWidget {
  final String balance;

  MainAcc({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 205, 217, 221),
      ),
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Main account',
            style: TextStyle(
              color: Color.fromARGB(255, 22, 36, 53),
              fontSize: 20,
            ),
          ),
          Text(
            balance,
            style: TextStyle(
              color: Color.fromARGB(255, 30, 53, 78),
              fontSize: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size((150), (65)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Color.fromARGB(255, 18, 44, 73),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Topup',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_downward_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size((150), (65)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
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
                        ),
                      ),
                      Icon(
                        Icons.arrow_upward_outlined,
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
