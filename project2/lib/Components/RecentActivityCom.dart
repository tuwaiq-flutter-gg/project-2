import 'package:flutter/cupertino.dart';

class RecentActivityCom extends StatelessWidget {
  const RecentActivityCom(
      {super.key,
      required this.AppName,
      required this.Date,
      required this.Price});
  final String AppName;
  final String Date;
  final double Price;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80,
        width: 350,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color(0xFFFFFFFF)),
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFFFFFFF)),
        child: //main Row
            Row(
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                height: 63,
                width: 63,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color(0xFFEBF2F9)),
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFEBF2F9)),
                child: Image.asset("images/gallery.png"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppName,
                    style: TextStyle(
                      color: Color(0xFF283B51),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    Date,
                    style: TextStyle(color: Color(0xFFA3B8D1)),
                  )
                ],
              ),
              SizedBox(
                width: 90,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "\$$Price",
                  style: TextStyle(
                      color: Color(0xFF283B51),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
