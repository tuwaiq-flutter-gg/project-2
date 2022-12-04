import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruba_project2/view/SecoundPage.dart';

class ListApp extends StatelessWidget {
  const ListApp({super.key, this.title, this.date, this.price, this.image});
final String? title,date,price,image;
  @override
  Widget build(BuildContext context) {
    return      Column(
       children: [
         Center(
          child: Container(
            height: MediaQuery.of(context).size.width / 6,
            width: MediaQuery.of(context).size.width - 45,
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width / 4) /2,
                    height: (MediaQuery.of(context).size.width/3)/2 ,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),     
                        color: Color(0xffD0DAE6)),
                       child: Padding(
                         padding: const EdgeInsets.all(13.0),
                         child: Image.asset(image.toString()),
                         ),      
                         ),
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                        
                            Text(title.toString(),style: TextStyle(color: Color(0xff283B51),fontSize: 18,fontWeight: FontWeight.bold),),
                         
                        ],),
                      Text(
                        date.toString(),
                        style: TextStyle(color: Color(0xffA3B8D1),),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:10,left:100.0),
                    child: Container(
                      width: (MediaQuery.of(context).size.width /4) / 2,
                      height: (MediaQuery.of(context).size.width / 4) / 2,
                      child: Text(price.toString(),
                          style: TextStyle(color: Color(0xff283B51),fontSize: 18,fontWeight: FontWeight.bold),)
                                 ),
                  ),      
                ],
              ),           

          ),
         ),
       ],
     );
  }
}