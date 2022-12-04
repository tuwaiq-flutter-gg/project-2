import 'package:asma_project_2/componts/butonSend.dart';
import 'package:asma_project_2/componts/numberList.dart';
import 'package:asma_project_2/src/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../componts/appBar.dart';
import '../componts/buttonNumber.dart';

class sendMoneyPage extends StatefulWidget {
  const sendMoneyPage({
    super.key,
    //required this.balance,
  });

  @override
  State<sendMoneyPage> createState() => _sendMoneyPageState();
}

class _sendMoneyPageState extends State<sendMoneyPage> {
  TextEditingController amountSend = new TextEditingController();
  // final double balance;
  @override
  Widget build(BuildContext context) {
    double currentBalance = 213.55;
    String s = "\$";
    var selct = "USD";
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
      appBar: AppBar(
        centerTitle: false,
        leading: InkWell(
          onTap: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: ((context) => home())));
          },
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              //  margin: EdgeInsets.all(value),
              child: Icon(
                Icons.keyboard_arrow_left_sharp,
                color: Color(0xFF292D32),
              ),
              padding: EdgeInsets.all(10),
              height: 47,
              width: 47,
              decoration: BoxDecoration(
                color: Color(0xFFD0DAE6),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              child: Icon(
                Icons.keyboard_control_outlined,
                color: Color(0xFF292D32),
              ),
              padding: EdgeInsets.all(10),
              height: 47,
              width: 47,
              decoration: BoxDecoration(
                color: Color(0xFFD0DAE6),
                shape: BoxShape.circle,
              ),
            ),
          )
        ],
        backgroundColor: Color(0xFFF5F7FA),
        shadowColor: Color(0xFFE5E5E5),
        elevation: 0,
      ),
      body: ListView(children: [
        Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Send to",
                  style: TextStyle(fontSize: 15, color: Color(0xFF446388)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Agus Samsudin",
                    style: TextStyle(
                        color: Color(
                          0xFF283B51,
                        ),
                        fontSize: 20)),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text(
                    "${s}${currentBalance}",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "SUD",
                    style: TextStyle(fontSize: 15),
                  ),
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xFFDCE8F5),
                      borderRadius: BorderRadius.circular(25)),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(30),
                alignment: Alignment.topLeft,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0xFFDCE8F5)),

                /////////////////////////////////////

                child: TextFormField(
                  controller: amountSend,
                  //   keyboardType: TextInputType.none,
                  initialValue: null,
                  showCursor: false,
                  decoration: InputDecoration(
                      // enabled: false,
                      hintText: "Add nots..",
                      hintStyle: TextStyle(fontSize: 20)),
                ),
              ),
              Container(
                //   padding: EdgeInsets.only(right: ),
                alignment: Alignment.topCenter,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 250,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 241, 240, 240),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Container(
                  child: Column(
                    children: [
                      NumberList(
                        controller: amountSend,
                        delete: () {
                          amountSend.text = amountSend.text
                              .substring(0, amountSend.text.length - 1);
                        },
                      ),
                      bottonSend(
                        controller: amountSend,
                        
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ]),
      ]),
    );
  }
}
