import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecoundPateText extends StatelessWidget {
  const SecoundPateText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Container(
            height: MediaQuery.of(context).size.height/5,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text("Send to",
                  style: TextStyle(color: Color(0xff446388),fontSize: 13),),
                ),
                Text("Agus Samsudin",
                style: TextStyle(color: Color(0xff283B51),fontSize: 18),),
               SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(top:25.0),
                  child: Text("\$213.55",
                  style: TextStyle(color: Color(0xff283B51),fontSize: 35,fontWeight: FontWeight.bold,),),
                ),
              ],

            ),
            
          ),
        );
  }
}