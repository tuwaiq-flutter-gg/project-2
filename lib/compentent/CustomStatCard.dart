import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomStatCard extends StatelessWidget {
  const CustomStatCard(
      {super.key,
      required this.imageURL,
      required this.title,
      required this.amount});
  final String imageURL;
  final String title;
  final double amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffDCE8F5),
        borderRadius: BorderRadius.circular(14),
      ),
      width: MediaQuery.of(context).size.width * 0.40,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageURL.toString(),
            height: 32,
            width: 32,
          ),
          SizedBox(height: 12),
          Text(
            title.toString(),
            style: TextStyle(
                color: Color(0xff446388),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            thickness: 1,
            color: Color(0xffD9D9D9),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "\$${amount}",
            style: TextStyle(
                color: Color(0xff283B51),
                fontSize: 22,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
