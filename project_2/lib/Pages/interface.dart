import 'package:flutter/material.dart';
import 'package:project_2/objects/Main%20account.dart';
import 'package:project_2/objects/Recent%20Activity.dart';
import 'package:project_2/objects/Recent%20Send%20Money.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "~ Hi, Norlanda!",
          style: TextStyle(color: Color(0xFF283B51)),
        ),
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: InkWell(
              onTap: () {}, //#----------------------------------
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Color(0xFFD0DAE6),
                  height: 47,
                  width: 47,
                  child: Container(
                      // margin: EdgeInsets.all(1),
                      //color: Colors.grey,
                      height: 30,
                      width: 20,
                      child: Image.asset(
                        "images/gallery.png",
                        fit: BoxFit.fill,
                      )),
                ),
              ),
            ),
          )
        ],
        backgroundColor: Color(0xFFE5E5E5),
      ),
      body: Container(
        color: Color(0xFFE5E5E5),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              MainAccount(),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recent Activity",
                        style: TextStyle(
                            color: Color(0xFF283B51),
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF446388)),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              RecentActivity(
                  activityName: "Figma",
                  activityTime: "12 August 2022",
                  activityPrice: "20.1"),
              SizedBox(
                height: 16,
              ),
              RecentActivity(
                  activityName: "Netflix",
                  activityTime: "07 August 2022",
                  activityPrice: "14.1"),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.only(left: 24, top: 30, bottom: 14),
                  child: Text("Recent Send Money",
                      style: TextStyle(
                          color: Color(0xFF283B51),
                          fontSize: 18,
                          fontWeight: FontWeight.bold))),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Container(
                    color: Colors.white,
                    //height: 115,
                    width: 327,
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Row(
                      children: [
                        RecentSendMoney(
                            personName: "Agus", backColor: 0xFFDCE8F5),
                        RecentSendMoney(
                            personName: "Siti", backColor: 0XFFFBE7D0),
                        RecentSendMoney(
                            personName: "Udin", backColor: 0xFFD6E3FC),
                        RecentSendMoney(
                            personName: "Tina", backColor: 0xFFDEC6FC)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
