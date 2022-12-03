import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Atistics extends StatelessWidget {
  const Atistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            child: Icon(Icons.arrow_circle_left_sharp)))),
                Center(
                    child: Text(
                  "Statistics",
                  style: TextStyle(fontSize: 26),
                )),
                IconButton(
                    onPressed: () {},
                    icon: Align(
                        alignment: Alignment.topRight,
                        child: Container(child: Icon(Icons.more_horiz_sharp)))),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 385,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFFFFFF)),
                 
                  child: Column(
                    children: [
                      Align(alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromARGB(255, 205, 208, 213)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 15,left: 15),
                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                          Text("Your Balance",style: TextStyle(color: Color(0xff446388),),),
                                          Text("154 S.A.R",style: TextStyle(color: Color.fromARGB(255, 6, 7, 7),fontSize: 25))
                                        ],),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                     Align(alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                          child: Row(

                            children: [
                              Expanded(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 230,
                                 child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 197,
                                      width: 28,
                                      color: Color(0xffD3DDE9),
                                      child: Align(alignment: Alignment.bottomCenter, child: Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text("Mon",style: TextStyle(backgroundColor: Color(0xffFFFFFF)),),
                                      )),
                                    ),
                                    Container(
                                      height: 180,
                                      width: 28,
                                      color: Color(0xffD3DDE9),
                                      child: Align(alignment: Alignment.bottomCenter, child: Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text("Tus",style: TextStyle(backgroundColor: Color(0xffFFFFFF)),),
                                      )),
                                    ),
                                    Container(
                                      height: 142,
                                      width: 28,
                                      color: Color(0xffD3DDE9),
                                      child: Align(alignment: Alignment.bottomCenter, child: Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text("Wed",style: TextStyle(backgroundColor: Color(0xffFFFFFF)),),
                                      )),
                                    ),
                                    Container(
                                      height: 230,
                                      width: 24,
                                      color: Color(0xff283B51),
                                      child: Align(alignment: Alignment.bottomCenter, child: Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text("Thu",style: TextStyle(backgroundColor: Color(0xffFFFFFF)),),
                                      )),
                                    ),
                                    Container(
                                      height: 193,
                                      width: 25,
                                      color: Color(0xffD3DDE9),
                                      child: Align(alignment: Alignment.bottomCenter, child: Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text("Fri",style: TextStyle(backgroundColor: Color(0xffFFFFFF)),),
                                      )),
                                    ),
                                  ],
                                 ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 200,
                      width:MediaQuery.of(context).size.width/2.5 ,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      color: Color(0xffDCE8F5)
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Align(
                              alignment: Alignment.center,
                              child: Icon(Icons.transit_enterexit,size: 40,)),
                              
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("Income"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 1,
                             width:MediaQuery.of(context).size.width/2.5 ,
                             color: Color(0xffBBCADD),
                              
                            ),
                          ),
                          Center(child: Padding(
                            padding: const EdgeInsets.only(top:20),
                            child: Text("25.20 S.A.R",style: TextStyle(fontSize: 26,color: Color(0xff283B51)),),
                          ))
                        ],
                      ),
                    ), Container(
                      height: 200,
                      width:MediaQuery.of(context).size.width/2.5 ,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      color: Color(0xffDCE8F5)
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Align(
                              alignment: Alignment.center,
                              child: Icon(Icons.file_upload_sharp,size: 40,)),
                              
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("Expenditure"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 1,
                             width:MediaQuery.of(context).size.width/2.5 ,
                             color: Color(0xffBBCADD),
                              
                            ),
                          ),
                          Center(child: Padding(
                            padding: const EdgeInsets.only(top:20),
                            child: Text("47.51 S.A.R",style: TextStyle(fontSize: 26,color: Color(0xff283B51)),),
                          ))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
                 
          )
        ]));
  }
}
