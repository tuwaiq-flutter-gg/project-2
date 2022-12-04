import 'package:faisal_project2/Pages/Statics.dart';
import 'package:faisal_project2/Pages/sending.dart';
import 'package:faisal_project2/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return (Container(
      height: 200,
      width: 135,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Color(0xffDCE8F5)),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text("Main Account"),
          SizedBox(
            height: 10,
          ),
          Text(
            "\$154.723.00",
            style: TextStyle(fontSize: 35),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                padding: EdgeInsets.only(right: 10),
                height: 60,
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => statics()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "TopUp",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Icon(
                        Icons.flight_land,
                        size: 20,
                        color: Colors.white,
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: bb),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                height: 60,
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => (Sending())),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "WIthdraw",
                        style: TextStyle(
                          color: bb,
                          fontSize: 15,
                        ),
                      ),
                      Icon(
                        Icons.flight_takeoff,
                        size: 20,
                        color: bb,
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
