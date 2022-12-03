import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StaticsScreen extends StatelessWidget {
  const StaticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        title: CircleAvatar(
          backgroundColor: Colors.blue[200],
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.blue[200],
              child: Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
              color: Colors.grey[100],
              child: Column(children: [
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsetsDirectional.only(
                            start: 25, end: 25, top: 20, bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Your Balance",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            ),
                            Text(
                              "\$154.723.00",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      diagram(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsetsDirectional.only(
                          start: 25, end: 25, top: 30, bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadiusDirectional.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            Icons.arrow_downward_outlined,
                            size: 30,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Income",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            "\$25.245",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  
                  Container(
                      padding: EdgeInsetsDirectional.only(
                          start: 25, end: 25, top: 30, bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadiusDirectional.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.arrowUpRightFromSquare,
                            size: 30,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Expenditure",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            "\$47.51",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  
                  ],
                ),
              ])),
        ),
      ),
    );
  }

  Widget diagram() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        itemOfDiagramBuilder("Mon", 200.0),
        itemOfDiagramBuilder("Tue", 170.0),
        itemOfDiagramBuilder("Wed", 130.0),
        itemOfDiagramBuilder("Thu", 250.0,
            color: Color.fromARGB(255, 3, 19, 32)),
        itemOfDiagramBuilder("Fri", 200.0),
      ],
    );
  }

  Widget itemOfDiagramBuilder(title, percent, {color}) {
    return Column(
      children: [
        Container(
          height: percent,
          padding: EdgeInsetsDirectional.only(
              start: 25, end: 25, top: 20, bottom: 20),
          decoration: BoxDecoration(
            color: color ?? Colors.blue[100],
            borderRadius: BorderRadiusDirectional.circular(10),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),
        ),
      ],
    );
  }
}
