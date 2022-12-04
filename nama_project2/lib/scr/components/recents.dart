import 'package:flutter/material.dart';

class recents extends StatelessWidget {
   recents({
    Key? key,required this.midImage, this.midName, this.midDate, this.midPrice, this.recentTxt,
  }) : super(key: key);
  final  midName,midDate,midPrice,recentTxt;
Icon midImage;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Container(
        
        padding: EdgeInsets.all(9),
        color: Colors.white,
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Container(

                color: Color.fromARGB(255, 223, 232, 237),

                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width/7,
                child: Center(
                  child:
                     (midImage),
                    //size: 30,
                  
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
               child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 1),
                child: Column(
                  children: [
                    Text(midName,style: 
                    TextStyle(fontSize: 22,
                    fontWeight: FontWeight.bold,
                    ),textAlign: TextAlign.left,),
                    Text(midDate,textAlign: TextAlign.left),
                  ],
                ),
               )),
            Container(
              child: Text(midPrice,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}

class recentText extends StatelessWidget {
  const recentText({super.key, required this.recentTxt,});
final String recentTxt;
  @override
  Widget build(BuildContext context) {
    return Text(
                recentTxt,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              );
  }
}