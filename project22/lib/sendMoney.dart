import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project22/components.dart';
import 'package:project22/keyborad.dart';

class sendMoney extends StatefulWidget {
  const sendMoney({super.key});

  @override
  State<sendMoney> createState() => _sendMoneyState();
}

class _sendMoneyState extends State<sendMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Ink(
            decoration: const ShapeDecoration(
              color: Color(0xffD0DAE6),
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              color: Color(0xff283B51),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          moreButton(
              shapeColor: Color(0xffD0DAE6),
              iconeColor: Color(0xff283B51),
              Icons: Icons.more_horiz)
        ]),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "send to",
                    style: TextStyle(color: Color(0xff446388), fontSize: 14),
                  )),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Agus Samsudin",
                    style: TextStyle(color: Color(0xff283B51), fontSize: 18),
                  )),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: Text("\$213.55",
                    style: TextStyle(
                        color: Color(0xff283B51),
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(65, 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Color(0xffDCE8F5)),
                onPressed: () {},
                child: Text(
                  "USD",
                  style: TextStyle(
                    color: Color(0xff446388),
                  ),
                ),
              )),

              SizedBox(
                height: 30,
              ),

              // Container(
              //   alignment: Alignment.topLeft,
              //   height: MediaQuery.of(context).size.height / 2,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     color: Color(0xffD0DAE6),
              //   ),
              //   child: Column(
              //     children: [
              //       Row(
              //         children: [
              //           Padding(padding: EdgeInsets.all(10)),
              //           Text(
              //             "Add note... ",
              //             style: TextStyle(
              //               color: Color(0xff283B51),
              //             ),
              //           ),
              //           Spacer(),
              //           Icon(Icons.note_alt_outlined)
              //         ],
              //       ),
              //       SizedBox(
              //         height: 20,
              //       ),
              //       // keyboard()
              //     ],
              //   ),
              // )
              keyboard()
            ],
          ),

          // SizedBox(
          //   height: 500,
          //   child: keyboard(),
          // ),
        ],
      ),
    );
  }
}
