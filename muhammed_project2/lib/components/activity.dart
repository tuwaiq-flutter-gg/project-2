import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'backgrountIcon.dart';

class Activity extends StatelessWidget {
  String? title,subTitle;
  double? amount;
   Activity({super.key, this.amount,this.subTitle,this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top:10, left: 15, bottom: 10,right: 20),
        width: MediaQuery.of(context).size.width*.90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width*.85*.0428)
        ),
       child: Row(
         children: [
           backgroundIcon(
              centeredIcon: Image.asset("images/gallery.png"),
              backgroundColor: Color(0xffEBF2F9),
              height: 63,
              circular: false,     
            ),
            Expanded(
              child: Container(

                margin: EdgeInsets.only(left: 15),
                alignment: Alignment.centerLeft,


                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                     
                      child: RichText(text:TextSpan(text: "$title \n",   style: TextStyle(color: Color(0xff283B51), fontSize: 18, fontWeight: FontWeight.bold),
                      children: [TextSpan(text:"$subTitle",
                      style: TextStyle(color: Color(0xffA3B8D1), fontSize: 13)
                       )])
                      
                      
                    

                      ),
                    ),
                 
                    
                  ],
                ),
              ),
            ),
           Text("\$$amount",
                      
                      style: TextStyle(color: Color(0xff283B51), fontSize: 18, fontWeight: FontWeight.bold),

                      ),

         ],
        )
      ),
    );
  }
}