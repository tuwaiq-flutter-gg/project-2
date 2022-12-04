import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TitleAndBox extends StatelessWidget {
  const TitleAndBox({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: MediaQuery.of(context).size.width / 12,
      width: MediaQuery.of(context).size.width - 25,
      padding: EdgeInsets.only(left: 30,right: 25),     
      child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ 
          //draw circular and inside image
          Container(
                  child: 
                    Text(
                      "~ Hi, Norlanda!",style: TextStyle(color: Color(0xff283B51),fontWeight: FontWeight.bold)), 
                 ),
            Container(
            width: (MediaQuery.of(context).size.width / 4) / 2,
            height: (MediaQuery.of(context).size.width / 4) / 2,
            decoration: BoxDecoration(
                 shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(
                //     MediaQuery.of(context).size.width / 2 ),     
                color: Color(0xffD0DAE6)),
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Image.asset("images/photo.png"),
                ),      
                 ),           
      ]
      ),  
      );   
  }
  }