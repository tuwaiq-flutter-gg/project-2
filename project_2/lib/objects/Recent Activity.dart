import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity(
      {super.key,
      required this.activityName,
      required this.activityTime,
      required this.activityPrice});
  final String activityName;
  final String activityTime;
  final String activityPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: InkWell(
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Container(
            padding: EdgeInsets.zero,
            //margin: EdgeInsets.all(5),
            color: Colors.white,
            child: Row(
              children: [
                InkWell(
                    onTap: () {},
                    child: Container(
                      //width: MediaQuery.of(context).size.width,

                      height: 83,
                      //padding: EdgeInsets.all(10),
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.only(
                          left: 16,
                        )),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: Container(
                            padding: EdgeInsets.only(left: 16, right: 20),
                            height: 63,
                            width: 63,
                            color: Color(0xBBEBF2F9),
                            child: Container(
                              width: 24,
                              height: 24,
                              child: Image.asset(
                                "images/gallery.png",
                              ),
                            ),
                          ),
                        ), //!---------------------
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10),
                          child: Container(
                            //color: Colors.black,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text(activityName,
                                      style: TextStyle(
                                          color: Color(0xFF283B51),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Text(activityTime,
                                    style: TextStyle(
                                        color: Color(0xFFA3B8D1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ), //!------------------------------------
                        Padding(
                          padding: EdgeInsets.only(left: 150),
                          child: Container(
                              //color: Colors.yellow,
                              //width: 50,
                              child: Text("\$$activityPrice",
                                  style: TextStyle(
                                      color: Color(0xFF283B51),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))),
                        )
                      ]),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
