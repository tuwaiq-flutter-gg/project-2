import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NumberBord extends StatelessWidget {
  const NumberBord({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2,
        ),
        children: [
          Center(
            child: Text(
              "1",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "2",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "3",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "4",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "5",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "6",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "7",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "8",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "9",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
              child: Image.asset(
            "images/,.png",
            scale: 0.8,
          )),
          Center(
            child: Text(
              "0",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF536274),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(child: Image.asset("images/Group 950 (1).png", scale: 0.8)),
        ],
      ),
    );
  }
}
