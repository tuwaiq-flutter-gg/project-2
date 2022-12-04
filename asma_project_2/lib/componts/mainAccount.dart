import 'package:asma_project_2/src/home.dart';
import 'package:asma_project_2/src/statistics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../src/sendMoney.dart';
//import 'send';

class MainAccont extends StatelessWidget {
  const MainAccont({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 10),
      child: Container(
        //    margin: EdgeInsets.only(left: 20, right: 20),
        height: 251,
        width: MediaQuery.of(context).size.width - 33,
        decoration: BoxDecoration(
            color: Color(0xFFDCE8F5), borderRadius: BorderRadius.circular(24)),
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Text("Main account",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                  )),
              Text(
                "\$154.723.00",
                style: TextStyle(fontSize: 40),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Statistics())));
                      },
                      child: Container(
                        height: 70,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Color(0xFF283B51),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Topup  ",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              Icon(
                                Icons.south_east,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 70,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => sendMoneyPage())));
                        },
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Withdraw  ",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xFF283B51)),
                              ),
                              Icon(
                                Icons.call_made,
                                color: Color(0xFF283B51),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
