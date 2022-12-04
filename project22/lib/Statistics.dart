import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project22/components.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Ink(
            decoration: const ShapeDecoration(
              color: Color(0xffD0DAE6),
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              color: Color(0xff283B51),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Text(
            "Statistics",
            style: TextStyle(
                color: Color(0xff283B51),
                fontSize: 20,
                fontWeight: FontWeight.w900),
          ),
          moreButton(
              shapeColor: Color(0xffD0DAE6),
              iconeColor: Color(0xff283B51),
              Icons: Icons.more_horiz)
        ]),
      ),
      body: ListView(
        padding: EdgeInsets.all(19),
        children: [
          Container(
            padding: EdgeInsets.all(19),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.all(19),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffF5F7FA),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Your Balance",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff446388)),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text("\$154.723.00",
                                style: TextStyle(
                                    fontSize: 22, color: Color(0xff283B51)))
                          ],
                        ),
                      ],
                    )),
                SizedBox(
                  height: 37,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        staticContainer(
                            Hight: 162, day: "Mon", color: Color(0xffD3DDE9)),
                        Spacer(),
                        staticContainer(
                            Hight: 142, day: "Tue", color: Color(0xffD3DDE9)),
                        Spacer(),
                        staticContainer(
                            Hight: 107, day: "Wed", color: Color(0xffD3DDE9)),
                        Spacer(),
                        staticContainer(
                            Hight: 197, day: "Thu", color: Color(0xff283B51)),
                        Spacer(),
                        staticContainer(
                            Hight: 158, day: "Fri", color: Color(0xffD3DDE9)),
                      ]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              inOutCome(
                  containerColor: Color(0xffDCE8F5),
                  icone: Icons.arrow_circle_down,
                  iconeColor: Color(0xff283B51),
                  name: "Income",
                  money: "\$25.245"),
              inOutCome(
                  containerColor: Color(0xffDCE8F5),
                  icone: Icons.arrow_circle_up_rounded,
                  iconeColor: Color(0xff283B51),
                  name: "Expenditure",
                  money: "\$47.51")
            ],
          )
        ],
      ),
    );
  }
}
