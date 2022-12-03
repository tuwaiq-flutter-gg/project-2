import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  Cards(
      {super.key,
      required this.title1,
      required this.subTitle2,
      required this.count,
      required this.image});
  String title1;
  String subTitle2;
  String count;
  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: ListTile(
            leading: Container(
              height: 63,
              width: 63,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFFFF)),
              child: Image.asset("images/$image"),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                title1,
                style: TextStyle(color: Color(0xff283B51)),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                subTitle2,
                style: TextStyle(color: Color(0xffA3B8D1)),
              ),
            ),
            trailing: Text(
              count,
              style: TextStyle(
                  color: Color(0xff283B51),
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
