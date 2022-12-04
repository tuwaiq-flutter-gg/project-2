import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import 'package:project_2/classes/account.dart';
import 'package:project_2/components/key.dart';
import 'package:project_2/components/myIcon.dart';

// test object
const Account testAccount = Account(name: "Rakan", balance: 154723);

class SendMoneyPage extends StatefulWidget {
  SendMoneyPage({super.key});

  @override
  State<SendMoneyPage> createState() => _SendMoneyPageState();
}

class _SendMoneyPageState extends State<SendMoneyPage> {
  String transferAmount = "0";

  @override
  Widget build(BuildContext context) {
    double screenhight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    // ThemeData(textTheme: GoogleFont);
    return Scaffold(
      backgroundColor: const Color(0XFFF5F7FA),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            // App bar row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: MyIcon(
                    svgPicturePath: "assets/icons/arrow-left.svg",
                    size: 47,
                    backGroundColor: const Color(0xffD0DAE6),
                  ),
                ),
                MyIcon(
                  svgPicturePath: "assets/icons/more-horizontal.svg",
                  size: 47,
                  backGroundColor: const Color(0xffD0DAE6),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Column(
                children: [
                  const Text(
                    "Send to",
                    style: TextStyle(
                      color: Color(0xff446388),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    "Agus Samsudin",
                    style: TextStyle(
                      color: Color(0xff283B51),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          barrierColor: const Color(0x00ffffff),
                          clipBehavior: Clip.antiAlias,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(40),
                            ),
                          ),
                          context: context,
                          builder: (context) {
                            return Stack(
                              alignment: AlignmentDirectional.bottomCenter,
                              children: [
                                Container(
                                  alignment: Alignment.topCenter,
                                  padding: const EdgeInsets.only(
                                      top: 25, left: 24, right: 24),
                                  height: screenhight * 0.59,
                                  width: screenWidth,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFDCE8F5),
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(40),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Add note..",
                                        style: TextStyle(
                                          color: Color(0xff446388),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SvgPicture.asset(
                                          "assets/icons/edit-2.svg"),
                                    ],
                                  ),
                                ),
                                // Keyboard Container
                                Container(
                                  height: (screenhight * 0.59) * 0.82,
                                  width: screenWidth,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFFFFFFF),
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(40),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 40),
                                        height: 230,
                                        width: 357,
                                        child: GridView.count(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          crossAxisCount: 3,
                                          childAspectRatio: 2,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  transferAmount += "1";
                                                });
                                              },
                                              child: DigitKey(keyValue: "1"),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  transferAmount += "2";
                                                });
                                              },
                                              child: DigitKey(keyValue: "2"),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  transferAmount += "3";
                                                });
                                              },
                                              child: DigitKey(keyValue: "3"),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  transferAmount += "4";
                                                });
                                              },
                                              child: DigitKey(keyValue: "4"),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  transferAmount += "5";
                                                });
                                              },
                                              child: DigitKey(keyValue: "5"),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  transferAmount += "6";
                                                });
                                              },
                                              child: DigitKey(keyValue: "6"),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  transferAmount += "7";
                                                });
                                              },
                                              child: DigitKey(keyValue: "7"),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  transferAmount += "8";
                                                });
                                              },
                                              child: DigitKey(keyValue: "8"),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  transferAmount += "9";
                                                });
                                              },
                                              child: DigitKey(keyValue: "9"),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  // transferAmount += ",";
                                                });
                                              },
                                              child: DigitKey(keyValue: ","),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  transferAmount += "0";
                                                });
                                              },
                                              child: DigitKey(keyValue: "0"),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  if (transferAmount.length >
                                                      1) {
                                                    transferAmount =
                                                        transferAmount.substring(
                                                            0,
                                                            transferAmount
                                                                    .length -
                                                                1);
                                                  }
                                                });
                                              },
                                              child:
                                                  DigitKey(keyValue: "delete"),
                                            ),
                                          ],
                                        ),
                                      ),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFF283B51),
                                            fixedSize: const Size(357, 50),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            shadowColor:
                                                const Color(0x00FFFFFF),
                                          ),
                                          onPressed: () {},
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "Send",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              SvgPicture.asset(
                                                "assets/icons/send.svg",
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            );
                          });
                    },
                    child: Text(
                      NumberFormat.simpleCurrency(
                              locale: "en_US", decimalDigits: 2)
                          .format(double.parse(transferAmount)),
                      style: const TextStyle(
                        fontSize: 36,
                        color: Color(0xff283B51),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    height: 29,
                    width: 73,
                    decoration: BoxDecoration(
                        color: const Color(0xFFDCE8F5),
                        borderRadius: BorderRadius.circular(17)),
                    child: const Text(
                      "USD",
                      style: TextStyle(
                        color: Color(0xff283B51),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
