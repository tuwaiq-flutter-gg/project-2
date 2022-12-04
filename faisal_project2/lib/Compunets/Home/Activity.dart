import 'package:faisal_project2/main.dart';
import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  const Activity(
      {super.key,
      required this.img,
      required this.name,
      required this.price,
      required this.date});
  final String img;
  final String name;
  final String price;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: (Container(
        height: 100,
        width: 135,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.white),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Stack(children: [
                      Center(
                        child: Image.asset(
                          img.toString(),
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            name.toString(),
                            style: TextStyle(fontSize: 25, color: bb),
                          ),
                        ),
                        Text(
                          date.toString(),
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffA3B8D1)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                price.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
              //   Text(data)
            ],
          ),
        ),
      )),
    );
  }
}
