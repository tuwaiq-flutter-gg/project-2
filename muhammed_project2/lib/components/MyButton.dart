import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyButton extends StatelessWidget {
  double? height;
  double width;
  double? borderRadius;
  Color? buttonColor;
  Widget? buttonIcon, textWidget;
   MyButton({super.key,this.textWidget,this.buttonColor, this.buttonIcon, this.height,  this.borderRadius,required this.width}){
     if(this.borderRadius== null){
       borderRadius=0;
     }
   }

  @override
  Widget build(BuildContext context) {
    return Container(

      height: height,
      width: width,
      decoration: BoxDecoration(
        color:buttonColor,
        borderRadius: BorderRadius.circular(borderRadius!) 
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(right: 10),
              child: textWidget,

            ),
       
            Container(
              child: buttonIcon,

            ),

          
          ],
        ),
      ),

    );
  }
}