import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class customActivityCard extends StatelessWidget {
  const customActivityCard(
      {super.key, required this.name, required this.date, required this.price});
  final String name;
  final String date;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(14),
          ),
          width: MediaQuery.of(context).size.width * 0.85,
          height: MediaQuery.of(context).size.height * 0.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  color: Color(0xffD0DAE6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: const FaIcon(
                  FontAwesomeIcons.image,
                  size: 30,
                )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name.toString(),
                    style: TextStyle(
                        color: Color(0xff283B51),
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    date.toString(),
                    style: TextStyle(
                        color: Color(0xffA3B8D1),
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Text(
                "\$${price}",
                style: TextStyle(
                    color: Color(0xff283B51),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ],
          )),
    );
  }
}
