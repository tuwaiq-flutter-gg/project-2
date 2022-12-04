import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class seperatedContainer extends StatelessWidget {
double? amount;
Widget? icon;
   seperatedContainer({super.key, this.amount, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.38,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xffDCE8F5),
        
      ),
      padding: EdgeInsets.only(top:33, bottom: 42, left: 10, right: 10),
      child:FractionallySizedBox(
        widthFactor: .8,
        child: Column(
          children: [
          Container(child: icon,),
          Divider(
            thickness: 2,
            height: 25,
            color: Color(0xffBBCADD),
      
          ),
          Text("\$$amount", style: TextStyle(color: Color(0xff283B51),fontSize: 22),)]
        ),
      ),
    );
  }
}