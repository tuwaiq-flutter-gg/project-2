import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruba_project2/Component/allnumber.dart';
import 'package:ruba_project2/Component/number.dart';

class textandimage extends StatelessWidget {
  const textandimage({super.key, this.title, this.image});
final String? title, image;
  @override
  Widget build(BuildContext context) {
    return       
        Container(
          alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                color: Color(0xffDCE8F5)
              ),
              child: Column(
                children: [
                   
                  Row(   //to draw text and image in defreent side
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(title.toString(),style: TextStyle(color: Color(0xff446388),fontSize: 15),),
                      ),
                       
                           Container( 
                    width: (MediaQuery.of(context).size.width /3) / 2,
                    height: (MediaQuery.of(context).size.width/3 ) / 2,          
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              // child:  Image.asset(image.toString(),),
                             child:  IconButton(icon: Icon(IconData(0xeee9, fontFamily: 'MaterialIcons')), onPressed: () 
                             { 
                               showModalBottomSheet( 
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30))),
                                context: context, builder:(context) =>  allnumber(),
                  );
                              },),
                               ),
                               
                            ),  

                  ],
                  ), 
            ],
          ),

             
    );
        
  }
}
