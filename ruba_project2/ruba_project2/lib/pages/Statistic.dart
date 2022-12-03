import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruba_project2/pages/Home.dart';

import 'SendMoney.dart';

class Statistic extends StatefulWidget {
  const Statistic({super.key});

  @override
  State<Statistic> createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Color(0xffF5F7FA),
     body: ListView(children: [
       Column(
         children: [
           Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Homepage()));
                        },
                        child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xffD0DAE6)),
                            child: Icon(Icons.arrow_back_ios_new_outlined)),
                      ),
                    ),
                    SizedBox(width: 500,),

                    Container(
                      
                      child: Text("Statistics",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700,color: Color(0xff283B51)),)),
                    SizedBox(width: 530,),
                    Container(
                      
                    
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => SendMoney()));
                        },
                        child: Container(
                            padding: EdgeInsets.only(bottom: 10),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xffD0DAE6)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Icon(Icons.more_horiz),
                            )),
                      ),
                    ),
                        ]
                        ),
                        Container(
                          
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),

                          height: (MediaQuery.of(context).size.height/2)+30,
                          width: MediaQuery.of(context).size.width-30,
                          
                          child: Column(

                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                height: 80,
                                width: MediaQuery.of(context).size.width-60,
                                decoration: BoxDecoration(
                            color: Color(0xffF5F7FA),
                            borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(width: 20,),
                                Text("Your balance",style: TextStyle(color: Color.fromARGB(255, 184, 195, 209)),),
                                SizedBox(width: 1000,),
                                Text("\$154.723.00",style: TextStyle(fontSize: 20))
                              ],
                            ),
                            
                              ),
                              SizedBox(height: 20,),
                              Container(
                                padding: EdgeInsets.only(left: 400,),
                                child: Row(
                                  
                                  
                                  children: [
                                    Column(
                                       
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                             color: Color(0xffD3DDE9),
                                          ),

                                         margin: EdgeInsets.only(bottom: 20,top: 30),
                                         
                                          height: 130,
                                          width: 40,
                                        ),
                                        Text("Mon")
                                      ],
                                    ),
                                    SizedBox(width: 80,),
                                     Column(
                                       
                                      children: [
                                        Container(
                                           decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                             color: Color(0xffD3DDE9),
                                          ),

                                         margin: EdgeInsets.only(bottom: 20,top: 60),
                                          
                                          height: 100,
                                          width: 40,
                                        ),
                                        Text("Tue")
                                      ],
                                    ),
                                    SizedBox(width: 80,),
                                     Column(
                                       
                                      children: [
                                        Container(
                                        margin: EdgeInsets.only(bottom: 20,top: 80),

                                           decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                             color: Color(0xffD3DDE9),
                                          ),

                                          height: 80,
                                          width: 40,
                                        ),
                                        Text("Wed")
                                      ],
                                    ),
                                    SizedBox(width: 80,),
                                     Column(
                                       
                                      children: [
                                        Container(
                                        margin: EdgeInsets.only(bottom: 20),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                             color: Color(0xff283B51),
                                          ),

                                          height: 160,
                                          width: 40,
                                        ),
                                        Text("Thu")
                                      ],
                                    ),
                                    SizedBox(width: 80,),
                                     Column(
                                       
                                      children: [
                                        Container(
                                         margin: EdgeInsets.only(bottom: 20,top: 38),
                                           decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                             color: Color(0xffD3DDE9),
                                          ),

                                          height: 120,
                                          width: 40,
                                        ),
                                        Text("Fri")
                                      ],
                                    ),
                                    SizedBox(width: 80,),
                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                             
                              margin: EdgeInsets.only(left: 20 , right: 50),
                              width: (MediaQuery.of(context).size.width/2)-40,
                              height: 300,

                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)
                              , color: Color(0xffDCE8F5)),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                    iconSize: 80,
                                    padding: EdgeInsets.only(top: 20),
                                    onPressed: (){}, icon: Icon(Icons.input), style: ButtonStyle( ),
                                    
                                    ),
                                    SizedBox(height: 10,),
                                    Center(
                                      child: Text("Income", style: TextStyle(color: Color.fromARGB(255, 160, 175, 194) , fontWeight: FontWeight.w600),),
                                    ),
                                    SizedBox(height: 20,),

                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text("_________________________________________________________________________"),
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      child: Text("\$25.245" , style: TextStyle(color: Color(0xff283B51),fontSize: 25 , fontWeight: FontWeight.w500),),
                                    )

                                ],
                              ),
                            ),
                            Container(
                              
                               width: (MediaQuery.of(context).size.width/2)-40,
                              height: 300,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)
                              , color: Color(0xffDCE8F5)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                    iconSize: 80,
                                    padding: EdgeInsets.only(top: 20),
                                    onPressed: (){}, icon: Icon(Icons.output), style: ButtonStyle( ),
                                    
                                    ),
                                    SizedBox(height: 10,),
                                    Center(
                                      child: Text("Expenditure", style: TextStyle(color: Color.fromARGB(255, 160, 175, 194) , fontWeight: FontWeight.w600),),
                                    ),
                                    SizedBox(height: 20,),

                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text("_________________________________________________________________________"),
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      child: Text("\$47.51" , style: TextStyle(color: Color(0xff283B51),fontSize: 25 , fontWeight: FontWeight.w500),),
                                    )

                                ],
                              ),
                            )
                          ],
                        )

         ],
       ),

      
     ]),
    );
  }
}