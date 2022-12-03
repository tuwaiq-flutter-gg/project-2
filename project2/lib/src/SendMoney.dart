import 'package:flutter/material.dart';
import 'package:project2/component/appbar.dart';
import 'package:project2/component/gridViewCon.dart';
import 'package:project2/src/homePage.dart';

class Send_money extends StatelessWidget {
  static const String screenRu = "Send_money";

  Send_money({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      body: SafeArea(
        child: Column(
          children: [
            AppBarCustom(),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                "Send to",
                style: TextStyle(color: Color(0xff446388)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "Agus Samsudin",
                style: TextStyle(fontSize: 17, color: Color(0xff283B51)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                r"$213.55",
                style: TextStyle(fontSize: 50, color: Color(0xff283B51)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                height: 29,
                width: 73,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xffDCE8F5)),
                child: Text(
                  "USD",
                  style: TextStyle(color: Color(0xff283B51)),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Stack(children: [
              Container(
                width: 450,
                height: 460,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffDCE8F5)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 390, left: 30),
                      child: Text(
                        "Add note..",
                        style:
                            TextStyle(color: Color(0xff446388), fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 390, left: 250),
                      child: Image.asset("images/edit-2.png"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 66),
                child: Container(
                  width: 450,
                  height: 394,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xffFFFFFF)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 45, bottom: 100, top: 20),
                    child: GridView.count(
                      crossAxisCount: 4,
                      mainAxisSpacing: 60,
                      scrollDirection: Axis.horizontal,
                      children: [
                        ConGridView(
                          number: "1",
                        ),
                        ConGridView(
                          number: "4",
                        ),
                        ConGridView(
                          number: "7",
                        ),
                        ConGridView(
                          number: ",",
                        ),
                        ConGridView(
                          number: "2",
                        ),
                        ConGridView(
                          number: "5",
                        ),
                        ConGridView(
                          number: "8",
                        ),
                        ConGridView(
                          number: "0",
                        ),
                        ConGridView(
                          number: "3",
                        ),
                        ConGridView(
                          number: "6",
                        ),
                        ConGridView(
                          number: "9",
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          color: Color(0xffFFFFF),
                          alignment: Alignment.center,
                          child: Image.asset("images/Group 950.png"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 360, left: 60),
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff283B51)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Row(
                      children: [
                        Text(
                          "Send",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 17,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset("images/send.png"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 450, left: 140),
                child: Container(
                  height: 5,
                  width: 134,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.black),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
