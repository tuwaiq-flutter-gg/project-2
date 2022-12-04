import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruba_project2/view/ThirdPage.dart';

class USDConponent extends StatelessWidget {
  const USDConponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Container(
            height: 30,
            width: 60,
           decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(15), 
            color: Color(0xffDCE8F5),),
            child: Align(alignment: Alignment.center,
              child:  TextButton(
            style: TextButton.styleFrom(
              textStyle: TextStyle(color: Color(0xff283B51),fontSize: 13),
            ),
           onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const ThirdPage())),
            child: Text("USD",style: TextStyle(color: Color(0xff283B51),),
          ),
              // Text("USD",style: TextStyle(color: Color(0xff283B51),fontSize: 13),)),
          ),
          )
          )
        );
  }
}