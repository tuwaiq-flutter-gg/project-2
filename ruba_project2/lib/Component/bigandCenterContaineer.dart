import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruba_project2/Component/Smallbox.dart';
import 'package:ruba_project2/Component/smallboxWith.dart';

class BigandCenter extends StatelessWidget {
  const BigandCenter({super.key,this.title,this.title1});
final String? title,title1;
  @override
  Widget build(BuildContext context) {
    return 
        //draw secoubd box 
     Padding(//space inside container
       padding: const EdgeInsets.all(20),
       child: Container( //all container and set the border
              height: (MediaQuery.of(context).size.width -40)/2 ,
              decoration: BoxDecoration(
                  // shape: BoxShape.circle,
                  borderRadius: BorderRadius.circular(24),     
                  color: Color(0xffDCE8F5)),
                    child: Center(
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title.toString(),style: TextStyle(color: Color(0xff446388),fontSize: 15),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            title1.toString(),style: TextStyle(color: Color(0xff283B51),fontSize: 30,fontWeight: FontWeight.bold),
                          ),
                          //start draw 2 container between them 
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row( //for container
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                              SmallBox(title: "Topup",image: "images/bottom-right.png"),
                              SmallBoxWith(title: "Withdraw",image: "images/trend.png"),  
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    
                    )
      //  ),
     );
  }
}