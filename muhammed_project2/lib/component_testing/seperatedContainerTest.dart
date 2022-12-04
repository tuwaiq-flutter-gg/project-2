import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muhammed_project2/components/seperatedContainer.dart';

import '../components/backgrountIcon.dart';

class seperatedContainerTest extends StatelessWidget {
  const seperatedContainerTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          seperatedContainer(amount:25.245, icon:    backgroundIcon(
            centeredIcon: Image.asset("images/Vector.png"),
            backgroundColor: Color.fromARGB(0, 222, 198, 252),
            height: 56,
            circular: false,  
            text: Text("Income",
            
            style: TextStyle(
              color: Color(0xff446388),
              fontSize: 18,
              

            ),
            ),   
          ), ),

          seperatedContainer(amount:47.51, icon:  backgroundIcon(
            centeredIcon: Image.asset("images/VectorUp.png"),
            backgroundColor: Color.fromARGB(0, 222, 198, 252),
            height: 56,
            circular: false,  
            text: Text("Expenditure",
            
            style: TextStyle(
              color: Color(0xff446388),
              fontSize: 18,
              

            ),
            ),   
          ),)
        ],
      ),
    );
  }
}