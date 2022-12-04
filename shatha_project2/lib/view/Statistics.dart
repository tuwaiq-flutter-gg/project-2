

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shatha_project2/main.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 40,
                  width: 40,
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    color: lightBlue,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Icon(Icons.arrow_back_ios_new , color: darkBlue,)
            ),
          ),
        ),
        actions: [
          Center(
            child: Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                color: lightBlue,
                borderRadius: BorderRadius.circular(50)
              ),
              child: Icon(Icons.more_horiz , color: darkBlue,)),
          )
        ],
        centerTitle: true,
        title: Text("Statistics" , style: TextStyle(color: darkBlue),),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: ListView(
        children: [
          Center(
            child: Container(
              width: 320,
              height: 380,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 65,
                    width: 280,
                    decoration: BoxDecoration(
                      color: lightBlue, 
                      borderRadius: BorderRadius.circular(14)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("Your Balance" , style: TextStyle(color: darkBlue , fontSize: 14),),
                        const Text("\$154.723.00" , style: TextStyle(color: darkBlue , fontSize: 22),),
                      ],
                    ),
                  ),

                  // here is the chart
                  SizedBox(
                    width: 280,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 162,
                              width: 40,
                              decoration: BoxDecoration(
                                color: lightBlue,
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                            const Text("Mon" , style: TextStyle(color: darkBlue , fontSize: 14),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 145,
                              width: 40,
                              decoration: BoxDecoration(
                                color: lightBlue,
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                            const Text("Tue" , style: TextStyle(color: darkBlue , fontSize: 14),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 107,
                              width: 40,
                              decoration: BoxDecoration(
                                color: lightBlue,
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                            const Text("Wed" , style: TextStyle(color: darkBlue , fontSize: 14),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 197,
                              width: 40,
                              decoration: BoxDecoration(
                                color: darkBlue,
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                            const Text("Thu" , style: TextStyle(color: darkBlue , fontSize: 14),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 158,
                              width: 40,
                              decoration: BoxDecoration(
                                color: lightBlue,
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                            const Text("Fri" , style: TextStyle(color: darkBlue , fontSize: 14),)
                          ],
                        ),
                        
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              width: 320,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 220,
                    width: 140,
                    decoration: BoxDecoration(
                      color: lightBlue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("images/receive-square-2.png"),
                        Text("Income" , style: TextStyle(color: darkBlue , fontSize: 18),),
                        Text("________________", style: TextStyle(color: darkBlue , fontSize: 10),),
                        
                        Text("\$25.245", style: TextStyle(color: darkBlue , fontSize: 22),)
                      ],
                    ),
                  ),
                  Container(
                    height: 220,
                    width: 140,
                    decoration: BoxDecoration(
                      color: lightBlue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("images/send-sqaure-2.png"),
                        Text("Expenditure" , style: TextStyle(color: darkBlue , fontSize: 18),),
                        Text("________________", style: TextStyle(color: darkBlue , fontSize: 10),),
                        Text("\$47.51", style: TextStyle(color: darkBlue , fontSize: 22),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}