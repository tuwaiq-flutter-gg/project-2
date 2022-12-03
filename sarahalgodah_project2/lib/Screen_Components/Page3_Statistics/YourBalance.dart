
import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/constant.dart';

class YourBalance extends StatelessWidget {
  const YourBalance({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding - 10),
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.09,
      margin: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F7FA),
        borderRadius: BorderRadius.circular(14)
      ),
    
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
           Text("Your Balance", style: TextStyle(color: primaryTextColor, fontSize: 14),),
           Text("\$154.723.00", style: TextStyle(fontSize: 22)),
        ],
      ) ,
    );
  }
}
