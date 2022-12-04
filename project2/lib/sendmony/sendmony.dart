import 'package:flutter/material.dart';
import 'package:project2/Statistics/static.dart';

class sendmony extends StatelessWidget {
  const sendmony({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Bodysend(),
    );
  }
}

class Bodysend extends StatelessWidget {
  const Bodysend({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          //   padding: EdgeInsets.all(20),
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
                        child: Center(
                          child: Column(
                            children: [
                              Text('Send to',
                                  style: TextStyle(
                                      color: Color(0xff446388), fontSize: 12)),
                              Text('Agus Samsudin',
                                  style: TextStyle(
                                      color: Color(0xff283B51), fontSize: 18)),
                              SizedBox(
                                height: 16,
                              ),
                              Text('\$213.55',
                                  style: TextStyle(
                                      color: Color(0xff283B51),
                                      fontSize: 40,
                                      fontWeight: FontWeight.w600)),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                child: Container(
                                  height: 25,
                                  width: 75,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffDCE8F5)),
                                  child: Center(
                                      child: Text(
                                    'USD',
                                    style: TextStyle(color: Color(0xff283B51)),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xffDCE8F5)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Add note..',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xff283B51))),
                          Container(
                            height: 20,
                            width: 20,
                            child: Image.asset('assets/edit.png'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 65),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromARGB(255, 255, 255, 255)),
                        padding: EdgeInsets.all(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '1',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    Text(
                                      '2',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    Text(
                                      '3',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '4',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    Text(
                                      '5',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    Text(
                                      '6',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '7',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    Text(
                                      '8',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    Text(
                                      '9',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      ',',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    Text(
                                      '0',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    Text(
                                      '1',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 38,
                                ),
                                Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xff283B51),
                                  ),
                                  child: Center(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    
                                    children: [
                                      Text(
                                        'Send',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.send_rounded),
                                        iconSize: 15,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                     onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => staticpage(),
                                      ),
                                    );
                                  },
                                      ),
                                    ],
                                  )),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class icons extends StatefulWidget {
  const icons({super.key});

  @override
  State<icons> createState() => _iconsState();
}

class _iconsState extends State<icons> {
  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: const ShapeDecoration(
        color: Colors.lightBlue,
        shape: CircleBorder(),
      ),
      child: IconButton(
        icon: const Icon(Icons.android),
        color: Colors.white,
        onPressed: () {},
      ),
    );
  }
}
