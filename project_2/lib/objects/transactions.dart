import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key, required this.state, required this.amount,required this.images});
  final String state;
  final String amount;
  final String images;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        height: 218,
        width: 151,
        color: Color(0xFFDCE8F5),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 32,
            width: 32,
            child: Image.asset(
              images,
              fit: BoxFit.fill,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Text(
              state,
              style: TextStyle(fontSize: 18, color: Color(0xFF446388)),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Divider(
              endIndent: 30,
              thickness: 2,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text("\$$amount",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff283B51)))
        ]),
      ),
    );
  }
}
