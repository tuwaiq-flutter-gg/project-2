import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FiveColums extends StatelessWidget {
  const FiveColums({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     Container(  //stat to draw 5 comtainer and have inside 2 text
                              width: (MediaQuery.of(context).size.width -120 ) ,
                              height: (MediaQuery.of(context).size.width /2)+25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20), 
                                color: Colors.white),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                         Padding(
                                          padding: const EdgeInsets.only(top:20.0,left: 20),
                                          child: Container(
                                            margin: EdgeInsets.only(top:10),
                                             width: (MediaQuery.of(context).size.width / 6) / 2,
                                             height: (MediaQuery.of(context).size.width /3)-10 ,
                                             decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(4),    
                                              color:Color(0xffD3DDE9)),
                                              
                                                ),
                                                ),
                                                Padding(
                                                 padding: const EdgeInsets.only(left: 20,top:5),
                                                 child: Text("Mon",style: TextStyle(color: Color(0xff446388),fontSize: 15)),
                                                 )
                                                 ],),

                                                 Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                         Padding(
                                          padding: const EdgeInsets.only(top:20.0,left: 20),
                                          child: Container(
                                             margin: EdgeInsets.only(top:25),
                                             width: (MediaQuery.of(context).size.width / 6) / 2,
                                             height: (MediaQuery.of(context).size.width /3)-25 ,
                                             decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(4),    
                                              color:Color(0xffD3DDE9)),
                                              
                                                ),
                                                ),
                                                Padding(
                                                 padding: const EdgeInsets.only(left: 20,top:5),
                                                 child: Text("Tue",style: TextStyle(color: Color(0xff446388),fontSize: 15)),
                                                 )
                                                 ],),
                                                 Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                         Padding(
                                          padding: const EdgeInsets.only(top:20.0,left: 20),
                                          child: Container(
                                            margin: EdgeInsets.only(top:50),
                                             width: (MediaQuery.of(context).size.width / 6) / 2,
                                             height: (MediaQuery.of(context).size.width /3)-50 ,
                                             decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(4),    
                                              color:Color(0xffD3DDE9)),
                                              
                                                ),
                                                ),
                                                Padding(
                                                 padding: const EdgeInsets.only(left: 20,top:5),
                                                 child: Text("Wed",style: TextStyle(color: Color(0xff446388),fontSize: 15),),
                                                 )
                                                 ],),
                                                 Column(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                         Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Container(
                                             width: (MediaQuery.of(context).size.width / 6) / 2,
                                             height: (MediaQuery.of(context).size.width /3) +20,
                                             decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(4),    
                                              color:Color(0xff283B51)),
                                              
                                                ),
                                                ),
                                                Padding(
                                                 padding: const EdgeInsets.only(left: 20,top:5),
                                                 child: Text("Thu",style: TextStyle(color: Color(0xff446388),fontSize: 15)),
                                                 )
                                                 ],),
                                                 Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      
                                      children: [
                                         Padding(
                                          padding: const EdgeInsets.only(top:20.0,left: 20),
                                          child: Container(
                                            margin: EdgeInsets.only(top:15),
                                             width: (MediaQuery.of(context).size.width / 6) / 2,
                                             height: (MediaQuery.of(context).size.width /3)-15 ,
                                             decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(4),    
                                              color:Color(0xffD3DDE9)),
                                              
                                                ),
                                                ),
                                                Padding(
                                                 padding: const EdgeInsets.only(left: 20,top:5),
                                                 child: Text("Fri",style: TextStyle(color: Color(0xff446388),fontSize: 15)),
                                                 )
                                                 ],),
                                                 

                                  ]),
                             );
  }
}