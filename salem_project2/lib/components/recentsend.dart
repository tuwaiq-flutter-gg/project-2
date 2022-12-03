import 'package:flutter/material.dart';
import 'package:salem_project2/pages/sendpage.dart';

class RecentSend extends StatelessWidget {
  const RecentSend({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Send Money',
            style: TextStyle(
              color: Color(0xff283B51),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width / 28),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SendPage()),
                          );
                        },
                        child: Container(
                            height: MediaQuery.of(context).size.width / 6.5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.yellow,
                            ),
                            alignment: Alignment.center,
                            child: Image.asset("images/profilepic.png")),
                      ),
                      Text("Agus"),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.width / 6.5,
                          child: Image.asset("images/profilepic.png")),
                      Text("Siti"),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.width / 6.5,
                          alignment: Alignment.center,
                          child: Image.asset("images/profilepic.png")),
                      Text("Udin"),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.width / 6.5,
                          alignment: Alignment.center,
                          child: Image.asset("images/profilepic.png")),
                      Text("Tina"),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
