import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/homescreen/down.dart';

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      color: Color(0xffF5F7FA),
      child: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '~Hi, Norlanda!',
                    style: TextStyle(fontSize: 18, color: Color(0xff283B51)),
                  ),
                  Container(
                    decoration: const ShapeDecoration(
                      color: Color(0xffD6E3FC),
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.image),
                      iconSize: 20,
                      color: Color(0xff283B51),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Color(0xffDCE8F5),
                ),
                height: 200,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 33),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Main account',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff446388)),
                      ),
                      Text(
                        "\$154.723.00",
                        style:
                            TextStyle(fontSize: 30, color: Color(0xff283B51)),
                      ),
                      // SizedBox(
                      //   height: 35,
                      // ),

                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 55,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Color(0xff283B51)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Topup',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.arrow_downward_rounded,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    size: 20.0,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Color(0xffF5F7FA)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Withdraw',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff283B51),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_downward_rounded,
                                    color: Color(0xff283B51),
                                    size: 20.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Activity',
                    style: TextStyle(fontSize: 17, color: Color(0xff283B51)),
                  ),
                  Text(
                    ' See All',
                    style: TextStyle(fontSize: 12, color: Color(0xff446388)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color.fromARGB(255, 255, 255, 255)),
                child: Row(children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffDCE8F5),
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                      icon: const Icon(Icons.image),
                      iconSize: 20,
                      color: Color(0xff283B51),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Figma',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff283B51)),
                      ),
                      Text(
                        '12 August 2022',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffA3B8D1)),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 65,
                  ),
                  Text(
                    "\$20.1",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff283B51)),
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color.fromARGB(255, 255, 255, 255)),
                child: Row(children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffDCE8F5),
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                      icon: const Icon(Icons.image),
                      iconSize: 20,
                      color: Color(0xff283B51),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Netflix',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff283B51)),
                      ),
                      Text(
                        '07 August 2022',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffA3B8D1)),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 65,
                  ),
                  Text(
                    "\$14.1",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff283B51)),
                  ),
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Send Money',
                    style: TextStyle(fontSize: 17, color: Color(0xff283B51)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              down(),
            ],
          )
        ],
      ),
    );
  }
}
