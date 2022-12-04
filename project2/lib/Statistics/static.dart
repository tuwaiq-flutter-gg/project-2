import 'package:flutter/material.dart';

class staticpage extends StatelessWidget {
  const staticpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Bodystatic(),
    );
  }
}

class Bodystatic extends StatelessWidget {
  const Bodystatic({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Ink(
                            decoration: const ShapeDecoration(
                              color: Color(0xffD0DAE6),
                              shape: CircleBorder(),
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.arrow_back_ios_new),
                              color: Color(0xff283B51),
                              onPressed: () {},
                            ),
                          ),
                          Text(
                            'Statistics',
                            style: TextStyle(
                                fontSize: 20, color: Color(0xff283B51)),
                          ),
                          Ink(
                            decoration: const ShapeDecoration(
                              color: Color(0xffD0DAE6),
                              shape: CircleBorder(),
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.more_horiz),
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
                        height: 350,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Center(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xffF5F7FA)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Your Balance',
                                      style: TextStyle(
                                        color: Color(0xff446388),
                                      ),
                                    ),
                                    Text(
                                      '\$154.723.00',
                                      style: TextStyle(
                                          color: Color(0xff283B51),
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 135,
                                    width: 33,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xffD3DDE9)),
                                  ),
                                  Container(
                                    height: 105,
                                    width: 33,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xffD3DDE9)),
                                  ),
                                  Container(
                                    height: 85,
                                    width: 33,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xffD3DDE9)),
                                  ),
                                  Container(
                                    height: 170,
                                    width: 33,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xff283B51)),
                                  ),
                                  Container(
                                    height: 130,
                                    width: 33,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xffD3DDE9)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Mon',
                                      style:
                                          TextStyle(color: Color(0xff446388))),
                                  Text('Tue',
                                      style:
                                          TextStyle(color: Color(0xff446388))),
                                  Text('Wed',
                                      style:
                                          TextStyle(color: Color(0xff446388))),
                                  Text('Thu',
                                      style:
                                          TextStyle(color: Color(0xff446388))),
                                  Text('Fri',
                                      style:
                                          TextStyle(color: Color(0xff446388))),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(25),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffDCE8F5)),
                              height: 170,
                              width: 130,
                              child: Center(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.arrow_downward,
                                      color: Color(0xff283B51),
                                      size: 30.0,
                                    ),
                                    Text('Income',
                                        style: TextStyle(
                                            color: Color(0xff446388),
                                            fontSize: 15)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Divider(color: Color(0xffBBCADD)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '\$25.245',
                                      style: TextStyle(
                                          color: Color(0xff283B51),
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(25),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffDCE8F5)),
                              height: 170,
                              width: 130,
                              child: Center(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.arrow_downward,
                                      color: Color(0xff283B51),
                                      size: 30.0,
                                    ),
                                    Text('Income',
                                        style: TextStyle(
                                            color: Color(0xff446388),
                                            fontSize: 15)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Divider(color: Color(0xffBBCADD)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '\$25.245',
                                      style: TextStyle(
                                          color: Color(0xff283B51),
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
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
      ],
    );
  }
}
