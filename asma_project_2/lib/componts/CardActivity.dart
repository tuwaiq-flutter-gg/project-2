import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class cardActivity extends StatelessWidget {
  const cardActivity(
      {super.key, this.nameActivity, required this.activityDate, this.price});

  final nameActivity;
  final activityDate;
  final price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      //padding: EdgeInsets.only(top: 15),
      height: MediaQuery.of(context).size.height / 8.5,
      width: MediaQuery.of(context).size.width - 33,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              alignment: Alignment.center,
              width: (MediaQuery.of(context).size.width / 2.5) / 2,
              height: (MediaQuery.of(context).size.width / 2.5) / 2,
              child: Icon(
                Icons.image_rounded,
                size: 40,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFEBF2F9),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${nameActivity}",
                style: TextStyle(
                    color: Color(0xFF283B51),
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                "${activityDate} ",
                style: TextStyle(
                    color: Color(0xFFA3B8D1),
                    fontSize: 15,
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
          SizedBox(
            width: 80,
          ),
          Text(
            "\$ ${price}",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF283B51),
            ),
          )
        ],
      ),
    );
  }
}
