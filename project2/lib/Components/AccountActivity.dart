import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccountActivity extends StatelessWidget {
  const AccountActivity({super.key, required this.Icon,required this.Type,required this.Amount});
  final String Icon;
  final String Type;
  final double Amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 218,
      width: 151,
      decoration: BoxDecoration(
          color: Color(0xFFDCE8F5),
          border: Border.all(width: 1, color: Color(0xFFDCE8F5)),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Image.asset(Icon),
          Text(
            Type,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xFF4E6B8F)),
          ),
          Container(height: 1, width: 115, color: Color(0xFFBBCADD)),
          Text(
            "\$$Amount",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Color(0xFF283B51)),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
