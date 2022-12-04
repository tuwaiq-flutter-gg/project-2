import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TwoLargCon extends StatelessWidget {
  const TwoLargCon({super.key, this.title, this.price, this.image});
final String? title,price,image;

  @override
  Widget build(BuildContext context) {
    return 
               Container(
            margin: EdgeInsets.only(bottom: 10,top: 12),
            height: (MediaQuery.of(context).size.height/2)/2,
            width: (MediaQuery.of(context).size.width/2)-60,
            decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(15), 
            color: Color(0xffDCE8F5),),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                   width: (MediaQuery.of(context).size.width / 5) / 2-10,
                  height: (MediaQuery.of(context).size.width / 6) / 2-3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color:  Color(0xff283b51),
                  ),
               child: Image.asset(image.toString(),color: Colors.white),
                ),
               SizedBox(height: 10,),
                Text(title.toString(),style: TextStyle(color: Color(0xff446388),fontSize: 15,),),
                Text("____________",style: TextStyle(color: Color(0xff446388),fontSize: 20,),),
                SizedBox(height: 10,),
                Text(price.toString(),style: TextStyle(color: Color(0xff283B51),fontSize: 25),),
              ],
            ),
            
                
            );
  }
}