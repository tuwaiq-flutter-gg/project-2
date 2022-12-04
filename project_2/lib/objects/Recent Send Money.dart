import 'package:flutter/material.dart';

class RecentSendMoney extends StatelessWidget {
  const RecentSendMoney(
      {super.key, required this.personName, required this.backColor});
  final String personName;
  final int backColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 35),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(63),
                child: Container(
                  padding: EdgeInsets.only(left: 16, right: 20),
                  height: 63,
                  width: 63,
                  color: Color(backColor),
                  child: Container(
                    width: 24,
                    height: 24,
                    child: Image.asset(
                      "images/gallery.png",
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            personName,
            style: TextStyle(fontSize: 12, color: Color(0xFF283B51)),
          )
        ],
      ),
    );
  }
}
