import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruba_project2/pages/Home.dart';
import 'package:ruba_project2/pages/Statistic.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, top: 20),
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
                Container(
                  margin: EdgeInsets.only(left: 1100),
                  padding: EdgeInsets.only(top: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Statistic()));
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
              ],
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Send To ",
                    style: TextStyle(color: Color(0xff446388)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Argus Samsudin",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: ((context) => Container(
                                  height:
                                      (MediaQuery.of(context).size.height/2)+300,
                                             
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color(0xffDCE8F5),
                                  ),
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding:
                                        EdgeInsets.only(left: 20, top: 10),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Text("Add note ..."),
                                          SizedBox(
                                            width: 1150,
                                          ),
                                          Icon(Icons.edit_note_rounded)
                                        ],
                                      ),
                                      
                                    ),
                                  ),
                                )));
                        showModalBottomSheet(
                          backgroundColor: Color(0xffDCE8F5),
                            context: context,
                            builder: ((context) => Container(
                              padding: EdgeInsets.only(top: 20),
                             alignment: Alignment.topCenter,
                              margin:EdgeInsets.only(left: 20),
                              
                                  height:(
                                      (MediaQuery.of(context).size.height /3)+100
                                          ),
                                  width: MediaQuery.of(context).size.width-25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                   color: Colors.white
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 500),
                                    child: Column(        
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.topLeft,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: 100,
                                                    color: Colors.white,
                                                    child: ElevatedButton(
                                                      
                                                        onPressed: () {
                                                          Text("1");
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          primary:Colors.white
                                                        ),
                                                        child: Text("1",style: TextStyle(fontSize: 50 , color: Color(0xff283B51)),)),
                                                  ),
                                                 
                                                  Container(
                                                    height: 50,
                                                    width: 100,
                                                   
                                                    child: ElevatedButton(
                                                      
                                                        onPressed: (
                                                          
                                                        ) {
                                                          Text("2");
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          primary:Colors.white
                                                        ),
                                                      
                                                       
                                                        child: Text("2" ,style: TextStyle(fontSize: 50 , color: Color(0xff283B51)),)),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 100,
                                                    
                                                    child: ElevatedButton(
                                                        onPressed: () {
                                                          Text("3");
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          primary:Colors.white
                                                        ),
                                                        child: Text("3",style: TextStyle(fontSize: 50  , color: Color(0xff283B51)),)),
                                                  )
                                                ],
                                              ),
                                            ),
                                           ]
                                          
                                        ),
                                        Row(
                                          children: [
                                                  Container(
                                                    height: 50,
                                                    width: 100,
                                                    color: Colors.white,
                                                    child: ElevatedButton(
                                                      
                                                        onPressed: () {
                                                          Text("4");
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          primary:Colors.white
                                                        ),
                                                        child: Text("4",style: TextStyle(fontSize: 50 , color: Color(0xff283B51)),)),
                                                  ),
                                                 
                                                  Container(
                                                    height: 50,
                                                    width: 100,
                                                   
                                                    child: ElevatedButton(
                                                      
                                                        onPressed: (
                                                          
                                                        ) {
                                                          Text("5");
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          primary:Colors.white
                                                        ),
                                                      
                                                       
                                                        child: Text("5" ,style: TextStyle(fontSize: 50 , color: Color(0xff283B51)),)),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 100,
                                                    
                                                    child: ElevatedButton(
                                                        onPressed: () {
                                                          Text("6");
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          primary:Colors.white
                                                        ),
                                                        child: Text("6",style: TextStyle(fontSize: 50  , color: Color(0xff283B51)),)),
                                                  )
                                                ],
                                          

                                        ),
                                        Row(
                                          children: [
                                                  Container(
                                                    height: 50,
                                                    width: 100,
                                                    color: Colors.white,
                                                    child: ElevatedButton(
                                                      
                                                        onPressed: () {
                                                          Text("7");
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          primary:Colors.white
                                                        ),
                                                        child: Text("7",style: TextStyle(fontSize: 50 , color: Color(0xff283B51)),)),
                                                  ),
                                                 
                                                  Container(
                                                    height: 50,
                                                    width: 100,
                                                   
                                                    child: ElevatedButton(
                                                      
                                                        onPressed: (
                                                          
                                                        ) {
                                                          Text("8");
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          primary:Colors.white
                                                        ),
                                                      
                                                       
                                                        child: Text("8" ,style: TextStyle(fontSize: 50 , color: Color(0xff283B51)),)),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 100,
                                                    
                                                    child: ElevatedButton(
                                                        onPressed: () {
                                                          Text("9");
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          primary:Colors.white
                                                        ),
                                                        child: Text("9",style: TextStyle(fontSize: 50  , color: Color(0xff283B51)),)),
                                                  )
                                                ],
                                        ),
                                        Row(
                                          children: [
                                                  Container(
                                                    height: 50,
                                                    width: 100,
                                                    color: Colors.white,
                                                    child: ElevatedButton(
                                                      
                                                        onPressed: () {
                                                          Text("'");
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          primary:Colors.white
                                                        ),
                                                        child: Text("'",style: TextStyle(fontSize: 50 , color: Color(0xff283B51)),)),
                                                  ),
                                                 
                                                  Container(
                                                    height: 50,
                                                    width: 100,
                                                   
                                                    child: ElevatedButton(
                                                      
                                                        onPressed: (
                                                          
                                                        ) {
                                                          Text("");
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          primary:Colors.white
                                                        ),
                                                      
                                                       
                                                        child: Text("0" ,style: TextStyle(fontSize: 50 , color: Color(0xff283B51)),)),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 100,
                                                    
                                                    child: ElevatedButton(
                                                        onPressed: () {
                                                          Text("3");
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          primary:Colors.white
                                                        ),
                                                        child:Icon(Icons.backspace , color: Color(0xff283B51),),
                                                    )
                                                  ),
                                                ],

                                        ),
                                        SizedBox(height: 20,),
                                        Container(
                                         
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xff283B51),),
                                         margin: EdgeInsets.only(right: 500),
                                          height: 50,
                                          width: 400,
                                          child: TextButton(
                                            
                                            
                                            onPressed: (){}, child: Row(
                                              
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              
                                            children: [
                                              
                                              Text("Send" ,style: TextStyle(color: Colors.white),),
                                              Icon(Icons.send_rounded , color: Colors.white,)
                                            ],
                                          )),
                                        )
                                      ],
                                    ),
                                  ),
                                )));
                      },
                      child: Text("\$213.55",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500 , color: Color(0xff283B51)))),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 50,
                    height: 20,
                    child: Center(child: Text("USD")),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffDCE8F5),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}
