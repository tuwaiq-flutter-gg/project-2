import 'package:flutter/material.dart';


class SendMomeyPage extends StatelessWidget {
  const SendMomeyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
   
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
                                          child: Container(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2,
        ),
        children: [
          Center(
            child: Text(
              "1",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "2",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "3",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "4",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "5",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "6",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "7",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "8",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "9",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
              child: Image.asset(
            "images/,.png",
            scale: 0.8,
          )),
          Center(
            child: Text(
              "0",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(child: Image.asset("images/Group 950 (1).png", scale: 0.8)),
        ],
      ),
    ),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        //send button
                                        SizedBox(
      height: 50,
      width: 327,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "send".toString(),
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(
              width: 5,
            ),
            Image.asset("images/send.png")
          ],
        ),
        style: ElevatedButton.styleFrom(
            primary: Color(0xFF283B51),
            padding: EdgeInsets.all(13),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      ),
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