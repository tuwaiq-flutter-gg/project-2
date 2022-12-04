import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class twoBoxes extends StatelessWidget {
  const twoBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return 
  
        SizedBox(height: 50,
      child: Container(
        height: MediaQuery.of(context).size.width / 12,
        width: MediaQuery.of(context).size.width-20 ,
        padding: EdgeInsets.only(left: 20,right: 20),     
        child: Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,     
          children: [ 
            //draw 2 circular and inside image in two side
            Container(
              width: (MediaQuery.of(context).size.width / 4) / 2,
              height: (MediaQuery.of(context).size.width / 4) / 2,
              decoration: BoxDecoration(
                   shape: BoxShape.circle,     
                  color: Color(0xffD0DAE6)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset("images/left-chevron.png"),
                  ), 
                     ),
              Container(
              //alignment: Alignment.topRight,
              width: (MediaQuery.of(context).size.width / 4) / 2,
              height: (MediaQuery.of(context).size.width / 4) / 2,
              decoration: BoxDecoration(
                   shape: BoxShape.circle,     
                  color: Color(0xffD0DAE6)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset("images/option.png"),
                  ),      
                   ),           
        ]
        ),  
        ),
    );

  }
}