import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CycleList extends StatelessWidget {
  const CycleList({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Padding(
         padding: const EdgeInsets.only(left:20,right: 20,bottom: 20),
         
         child: Container(
           width: (MediaQuery.of(context).size.width / 3) / 2,
                height: (MediaQuery.of(context).size.width -35)/3 ,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24 ),     
                    color: Colors.white),
           child: Row( mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              //start the list and each column has color
               Column( 
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top:20.0,left: 20,bottom: 5),
                     child: Container(
            width: (MediaQuery.of(context).size.width / 3) / 2,
            height: (MediaQuery.of(context).size.width / 3) / 2,
            decoration: BoxDecoration(
                       shape: BoxShape.circle,   
                      color:Color(0xffdce8f5)),
                      child: Padding(
                        padding: const EdgeInsets.all(23.0),
                        child: Image.asset("images/photo.png"),
                      ),       
                               ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 20,bottom: 15),
                     child: Text("Agus"),
                   )
                 ],
               ),
               Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top:20.0,left: 20,bottom: 5),
                     child: Container(
            width: (MediaQuery.of(context).size.width / 3) / 2,
            height: (MediaQuery.of(context).size.width / 3) / 2,
            decoration: BoxDecoration(
                       shape: BoxShape.circle,   
                      color:Color(0xfffbe7d0)),
                      child: Padding(
                        padding: const EdgeInsets.all(23.0),
                        child: Image.asset("images/photo.png"),
                      ),       
                               ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 20,bottom: 15),
                     child: Text("Siti"),
                   )
                 ],
               ),
                    Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top:20.0,left: 20,bottom: 5),
                     child: Container(
            width: (MediaQuery.of(context).size.width / 3) / 2,
            height: (MediaQuery.of(context).size.width / 3) / 2,
            decoration: BoxDecoration(
                       shape: BoxShape.circle,   
                      color:Color(0xffd6e3fc)),
                      child: Padding(
                        padding: const EdgeInsets.all(23.0),
                        child: Image.asset("images/photo.png"),
                      ),       
                               ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 20,bottom: 15),
                     child: Text("Udin"),
                   )
                 ],
               ),
                    Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top:20.0,left: 20,bottom: 5),
                     child: Container(
            width: (MediaQuery.of(context).size.width / 3) / 2,
            height: (MediaQuery.of(context).size.width / 3) / 2,
            decoration: BoxDecoration(
                       shape: BoxShape.circle,   
                      color:Color(0xffdec6fc)),
                      child: Padding(
                        padding: const EdgeInsets.all(23.0),
                        child: Image.asset("images/photo.png"),
                      ),       
                               ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 20,bottom: 15),
                     child: Text("Tina"),
                   )
                 ],
               ),
             ],
           ),
         ),
       );
  }
}