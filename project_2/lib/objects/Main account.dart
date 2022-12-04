import 'package:flutter/material.dart';

class MainAccount extends StatelessWidget {
  const MainAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Padding(
            padding: const EdgeInsets.only(),
            child: Container(
              height: 251,
              width: 327,
              color: Color(0xFFDCE8F5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Main account",
                      style: TextStyle(fontSize: 16, color: Color(0xFF446388)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "\$154.723.00",
                      style: TextStyle(
                          color: Color(0xFF283B51),
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {}, //#----------------------------------
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            color: Color(0xFF283B51),
                            height: 68,
                            width: 140,
                            child: Container(
                              //color: Colors.blue,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Topup",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    height: 30,
                                    width: 30,
                                    child: Image.asset(
                                      "images/receive-square-2.png",
                                    ),
                                  )
                                ],
                              ),
                              //color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {}, //#----------------------------------
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            color: Colors.white,
                            height: 68,
                            width: 140,
                            child: Container(
                              //color: Colors.blue,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Topup",
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xFF283B51)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    height: 30,
                                    width: 30,
                                    child: Image.asset(
                                      "images/withdraw.png",
                                    ),
                                  )
                                ],
                              ),
                              //color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
