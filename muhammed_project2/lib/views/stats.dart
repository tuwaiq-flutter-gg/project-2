import 'package:flutter/material.dart';
import '../components/backgrountIcon.dart';
import '../components/mySimpleAppBar.dart';
import '../components/reactangularStat.dart';
import '../components/seperatedContainer.dart';

class statPage extends StatefulWidget {
  const statPage({super.key});

  @override
  State<statPage> createState() => _statPageState();
}

class _statPageState extends State<statPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: mySimpleAppBar(
              left: InkWell(
                 onTap: () =>   Navigator.pop(context),

                child: backgroundIcon(
                  centeredIcon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xff283B51),
                  ),
                  backgroundColor: Color(
                    0xffD0DAE6,
                  ),
                  height: 47,
                  circular: true,
                ),
              ),
              center: Text(
                "Statistics",
                style: TextStyle(
                    color: Color(0xff283B51),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              right: backgroundIcon(
                centeredIcon: Icon(
                  Icons.more_horiz,
                  color: Color(0xff283B51),
                ),
                backgroundColor: Color(0xffD0DAE6),
                height: 47,
                circular: true,
              ),
            )),
      ),
      body: Stack(children: [
        ListView(
          children: [
            FractionallySizedBox(
              widthFactor: .87,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 489
                ),
                child: Container(
                 
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * (.7 / 14),
                      bottom: MediaQuery.of(context).size.width * (.7 / 14)),
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 18,
                      bottom: MediaQuery.of(context).size.width / 14),
                  height: MediaQuery.of(context).size.height * .52,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width / 17),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .7,
                        height: MediaQuery.of(context).size.width * (.7 / 4),
                        decoration: BoxDecoration(
                            color: Color(0xffF5F7FA),
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.width * (.7 / 35))),
                        child: Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Your Balance",
                                    style: TextStyle(
                                        color: Color(0xff446388), fontSize: 14)),
                                Text(
                                  "\$154.723.00",
                                  style: TextStyle(
                                      color: Color(0xff283B51), fontSize: 22),
                                )
                              ]),
                        ),
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            rectangularStat(
                              backgroundColor: Color(0xffD3DDE9),
                              height: 197,
                              width: 38,
                              text: "Mon",
                            ),
                            rectangularStat(
                              backgroundColor: Color(0xffD3DDE9),
                              height: 180,
                              width: 38,
                              text: "Tue",
                            ),
                            rectangularStat(
                              backgroundColor: Color(0xffD3DDE9),
                              height: 107,
                              width: 38,
                              text: "Wed",
                            ),
                            rectangularStat(
                              backgroundColor: Color(0xff283B51),
                              height: 232,
                              width: 38,
                              text: "Thu",
                            ),
                            rectangularStat(
                              backgroundColor: Color(0xffD3DDE9),
                              height: 193,
                              width: 38,
                              text: "Fri",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                seperatedContainer(
                  amount: 25.245,
                  icon: backgroundIcon(
                    centeredIcon: Image.asset("images/Vector.png"),
                    backgroundColor: Color.fromARGB(0, 222, 198, 252),
                    height: 56,
                    circular: false,
                    text: Text(
                      "Income",
                      style: TextStyle(
                        color: Color(0xff446388),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                seperatedContainer(
                  amount: 47.51,
                  icon: backgroundIcon(
                    centeredIcon: Image.asset("images/VectorUp.png"),
                    backgroundColor: Color.fromARGB(0, 222, 198, 252),
                    height: 56,
                    circular: false,
                    text: Text(
                      "Expenditure",
                      style: TextStyle(
                        color: Color(0xff446388),
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            height: 5.5,
            margin: EdgeInsets.only(bottom: 4),
            width: MediaQuery.of(context).size.width * .42,
            decoration: BoxDecoration(
                color: Color(0xff1F1F1F),
                borderRadius: BorderRadius.circular(100)),
          ),
        ),
      ]),
    );
  }
}
