import 'package:faisal_project2/main.dart';

import 'package:flutter/material.dart';

class homeicons extends StatelessWidget {
  const homeicons({super.key});
  // final String name;
  // final String img;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 125,
        width: 135,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffDCE8F5)),
                    child: Icon(Icons.person_add_alt_1_rounded),
                  ),
                  Text("Faisal")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffFBE7D0)),
                    child: Icon(Icons.person_remove_rounded),
                  ),
                  Text("Ahmed")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffD6E3FC)),
                    child: Icon(Icons.person_pin),
                  ),
                  Text("Mohammed")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffDEC6FC)),
                    child: Icon(Icons.person_outline_sharp),
                  ),
                  Text("Khalid")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
