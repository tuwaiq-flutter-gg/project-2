import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SmallBox extends StatelessWidget {
  const SmallBox({super.key,this.title,this.image});
final String? title, image;

  @override
  Widget build(BuildContext context) {
    return 
      Container(
        height: (MediaQuery.of(context).size.height-20)/12,
        width:(MediaQuery.of(context).size.width-20)/3,
        decoration: BoxDecoration(
          // shape: BoxShape.circle,
           borderRadius: BorderRadius.circular(15), 
           color: Color(0xff283B51)), 
           child:Row(
            //for text and image
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                 title.toString(),style: TextStyle(color: Color(0xffFFFFFF))
                  ),   
                  Container(
                    width: (MediaQuery.of(context).size.width / 5) / 2,
                     height: (MediaQuery.of(context).size.width / 8) / 2,
                     child: Image.asset(image.toString(),color: Colors.white)
                     ),
                     ],
                     ), 
                   ) ;   
  }
}