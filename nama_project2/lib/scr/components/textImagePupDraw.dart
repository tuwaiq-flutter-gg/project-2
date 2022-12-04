import 'package:flutter/material.dart';

class ImagePupDraw extends StatelessWidget {
   ImagePupDraw(
      {super.key, required this.exchange, required this.exImage,required this.exColor,required this.exFontColor});
  final  exchange, exImage;
  Color exColor, exFontColor;

  @override
  Widget build(BuildContext context) {
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Container(
        height: MediaQuery.of(context).size.height / 13,
        width: MediaQuery.of(context).size.width / 2.7,
        color: (exColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(exchange,
                    style:
                        TextStyle(color:exFontColor,fontSize: 15, fontWeight: FontWeight.bold))),
            Container(
                height: MediaQuery.of(context).size.height / 30,
                width: MediaQuery.of(context).size.width / 6,
                child: Image.asset(
                  exImage,
                )),
          ],
        ),
      ),
    );
  }
}
