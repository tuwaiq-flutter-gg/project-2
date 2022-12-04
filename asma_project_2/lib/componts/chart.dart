import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class chart extends StatelessWidget {
  const chart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 45,
                height: MediaQuery.of(context).size.height / 1.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: Column(children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(20),
                    height: 80,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFFF5F7FA)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Your Balance",
                          style:
                              TextStyle(color: Color(0xFF446388), fontSize: 15),
                        ),
                        Text(
                          "\$154.723.00",
                          style: TextStyle(fontSize: 25),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.blue,
                    height: 330,
                    // width: MediaQuery.of(context).size.width,
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: 10, right: 10, bottom: 10, top: 50),
                            height: 300,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xFFD3DDE9)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 10, right: 10, bottom: 10, top: 100),
                            height: 220,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xFFD3DDE9)),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 10, right: 10, bottom: 10, top: 140),
                            height: 140,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xFFD3DDE9)),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 10,
                              right: 10,
                              bottom: 10,
                            ),
                            height: 350,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xFF283B51)),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 10, right: 10, bottom: 10, top: 50),
                            height: 300,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xFFD3DDE9)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Mon"),
                        Text("Tue"),
                        Text("Wed"),
                        Text("Thu"),
                        Text("Thu"),
                      ],
                    ),
                  )
                ]),
              ),
            ],
          );
  }
}
