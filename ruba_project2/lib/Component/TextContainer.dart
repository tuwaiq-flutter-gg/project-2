import 'package:flutter/material.dart';
import 'package:ruba_project2/Component/FiveColums.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({super.key, this.title, this.title1});
final String? title, title1;
  @override
  Widget build(BuildContext context) {
    return
    Center(       //darw the big box
        child: 
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: (MediaQuery.of(context).size.width -40 ) ,
                height: (MediaQuery.of(context).size.width -80),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),    
                        color: Colors.white),
                        child: Column(  //darw mallit thing inside big box   
                          children: [
                             Padding(
                               padding: const EdgeInsets.all(20.0),
                               child: Container(  //stat to draw small comtainer and have inside 2 text
                                width: (MediaQuery.of(context).size.width -90 ) ,
                                height: (MediaQuery.of(context).size.width / 6)-10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13), 
                                  color: Color(0xffF5F7FA),),
                                  child: Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                    Text(
                                      title.toString(),style: TextStyle(color: Color(0xff446388))
                                      ),
                                      Container(
                                        width: (MediaQuery.of(context).size.width-60 ) / 2,
                                        height: (MediaQuery.of(context).size.width / 8) / 2,
                                        child: Align(alignment: Alignment.centerRight,
                                          child: Text(title1.toString(),style: TextStyle(color: Color(0xff283B51),fontSize: 20,fontWeight: FontWeight.bold)
                                           ),
                                        ),
                                        ),
                     ],),

                                  ),
                             ),
                            FiveColums(),

                          ],
                        ),
                        ),                       
            ),
        );
  }
}