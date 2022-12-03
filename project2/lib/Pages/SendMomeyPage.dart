import 'package:flutter/material.dart';
import 'package:project2/Components/AppBarFullCom.dart';
import 'package:project2/Components/ButtonsCom.dart';
import '../Components/NumberBord.dart';

class SendMomeyPage extends StatelessWidget {
  const SendMomeyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
      appBar: AppBarFullCom(
        Title: "",
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Send to",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF446388),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Agus Samsudin",
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF283B51),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "\$213.55",
                style: TextStyle(
                    color: Color(0xFF283B51),
                    fontSize: 50,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 29,
                width: 73,
                decoration: BoxDecoration(
                    color: Color(0xFFDCE8F5),
                    border: Border.all(color: Color(0xFFDCE8F5), width: 1),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  "USD",
                  style: TextStyle(
                      color: Color(0xFF283B51),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                )),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                    color: Color(0xFFDCE8F5),
                    border: Border.all(color: Color(0xFFDCE8F5)),
                    borderRadius: BorderRadius.circular(40)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFDCE8F5),
                        border: InputBorder.none,
                        hintText: " Add note..",
                        hintStyle:
                            TextStyle(fontSize: 18, color: Color(0xFF446388)),
                        suffixIcon: Image.asset("images/edit-2.png"),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Color(0xFFDCE8F5))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Color(0xFFDCE8F5))),
                      ),
                    ),
                    //Button sheet
                    Container(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                                barrierColor:
                                    Color(0xFFDCE8F5).withOpacity(0.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(30))),
                                context: context,
                                builder: (context) => Container(
                                    height:
                                        (MediaQuery.of(context).size.height /
                                                2) -
                                            10,
                                    // inside The button
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 30,
                                        ),
                                        //number bord
                                        Container(
                                          height: 250,
                                          child: NumberBord(),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        //send button
                                        ButtonsCom(
                                          Height: 50,
                                          Width: 327,
                                          ContainerColor: Color(0xFF283B51),
                                          NameOfButton: "Send",
                                          fontSize: 17,
                                          NameColor: Colors.white,
                                          IconImage: "images/send.png",
                                          BorderRadius:
                                              BorderRadius.circular(10),
                                        )
                                      ],
                                    )));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF283B51),
                              padding: EdgeInsets.all(13),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40))),
                          child: Row(
                            children: [
                              Text(
                                "Transfer amount",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xFFDCE8F5)),
                              ),
                              Icon(
                                Icons.attach_money,
                                color: Color(0xFFDCE8F5),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
