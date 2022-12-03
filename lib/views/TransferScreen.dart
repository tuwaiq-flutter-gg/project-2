import 'package:flutter/material.dart';

import 'package:hadeel_project2/compentent/CustomButtonDark.dart';
import 'package:hadeel_project2/compentent/CustomButtonLight.dart';
import 'package:hadeel_project2/compentent/NumbersKeyboard.dart';
import 'package:hadeel_project2/views/StatisticsScreen.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          height: 50,
          width: 50,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffD0DAE6),
          ),
          child: IconButton(
              padding: EdgeInsets.symmetric(horizontal: 15),
              onPressed: () {
                Navigator.pop(context);
              },
              color: Color.fromRGBO(62, 88, 117, 1),
              icon: Icon(Icons.arrow_back_ios)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffD0DAE6),
              ),
              child: IconButton(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  onPressed: () {
                    // Navigator.pop(context);
                  },
                  color: Color(0xff283B51),
                  icon: Icon(Icons.more_horiz)),
            ),
          )
        ],
      ),
      //  ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Center(
            child: Text(
              "Sent to",
              style: TextStyle(
                  color: Color(0xff446388),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Center(
            child: Text(
              "Agus Samsudin",
              style: TextStyle(
                  color: Color(0xff283B51),
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  context: context,
                  builder: ((context) => Container(
                        decoration: BoxDecoration(
                          color: Color(0xffDCE8F5),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: MediaQuery.of(context).size.height * 0.55,
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 32),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Add note..",
                                      style: TextStyle(
                                          color: Color(0xff446388),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Image.asset(
                                      "assets/images/edit-2edit.jpg",
                                      width: 24,
                                      height: 24,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.48,
                                decoration: BoxDecoration(
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      topRight: Radius.circular(40),
                                    )),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        NumbersKeyboard(),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        customButtonDark(
                                          title: "Send",
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        StatisticsScreen())));
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )));
            },
            child: Center(
              child: Text(
                "\$154.723.00",
                style: TextStyle(
                    color: Color(0xff283B51),
                    fontSize: 50,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          customButtonLight(
            title: "USD",
          ),
        ],
      ),
    );
  }
}
