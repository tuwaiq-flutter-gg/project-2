import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Topup extends StatelessWidget {
  Topup({super.key});
  final ButtonStyle style1 = ElevatedButton.styleFrom(
      backgroundColor: Color(0xff283B51), fixedSize: Size(200, 10));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
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
                IconButton(
                    onPressed: () {},
                    icon: Align(
                        alignment: Alignment.topRight,
                        child: Container(child: Icon(Icons.more_horiz_sharp)))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                Center(
                    child: Text(
                  "Send to",
                  style: TextStyle(color: Color(0xff446388)),
                )),
                Center(
                    child: Text(
                  "Agus Samsudin",
                  style: TextStyle(fontSize: 18, color: Color(0xff283B51)),
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                      child: Text(
                    "213.55",
                    style: TextStyle(fontSize: 38, color: Color(0xff283B51)),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                    child: Container(
                      height: 29,
                      width: 73,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xffDCE8F5)),
                      child: Center(child: Text("S.A.R")),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffDCE8F5)),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 26),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Add note.."),
                          Icon(Icons.mode_edit_outlined)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                          height: MediaQuery.of(context).size.height / 1.8,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xffFFFFFF)),
                          alignment: Alignment.center,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 1.7,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(left: 70),
                            child: GridView.count(
                                crossAxisCount: 3,
                                shrinkWrap: true,
                                padding: const EdgeInsets.all(30),
                                children: [
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff283B51)),
                                  ),
                                  Text(
                                    "2",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff283B51)),
                                  ),
                                  Text(
                                    "3",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff283B51)),
                                  ),
                                  Text(
                                    "4",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff283B51)),
                                  ),
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff283B51)),
                                  ),
                                  Text(
                                    "6",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff283B51)),
                                  ),
                                  Text(
                                    "7",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff283B51)),
                                  ),
                                  Text(
                                    "8",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff283B51)),
                                  ),
                                  Text(
                                    "9",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff283B51)),
                                  ),
                                  Text(
                                    ",",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff283B51)),
                                  ),
                                  Text(
                                    "0",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff283B51)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 80, right: 30),
                                    child: Icon(Icons.backspace_outlined),
                                  ),
                                ]),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      bottomSheet: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: ElevatedButton(
            style: style1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "Send",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Icon(Icons.send_outlined)
              ],
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
