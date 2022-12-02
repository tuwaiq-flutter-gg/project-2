import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_2/Topup.dart';
import 'package:project_2/comonents/Recent%20Send%20Money_imag.dart';
import 'package:project_2/comonents/grid_from_home.dart';

class HomeSecren extends StatelessWidget {
  const HomeSecren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "~ Hi, Norlanda!",
                      style: TextStyle(color: Color(0xff283B51)),
                    ),
                    Container(
                      width: 47,
                      height: 47,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: SizedBox(
                          width: 47,
                          height: 47,
                          child: ClipOval(
                            child: Image.asset(
                              "img/my_Imeg.jpg",
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 327,
                height: 251,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffDCE8F5),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 23),
                      child: Center(
                          child: Text(
                        "Main account",
                        style: TextStyle(color: Color(0xff446388)),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Center(
                          child: Text(
                        "154.723.00",
                        style: TextStyle(
                            color: Color.fromARGB(255, 10, 11, 12),
                            fontSize: 33),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 29),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                             Navigator.push( context,
                      MaterialPageRoute(
                          builder: (context) => Topup()));
                            },
                            child: Container(
                              width: 140,
                              height: 68,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff283B51),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 30, left: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Topup",
                                      style:
                                          TextStyle(color: Color(0xffF5F7FA)),
                                    ),
                                    Icon(Icons.transit_enterexit)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              
                            },
                            child: Container(
                              width: 140,
                              height: 68,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffF5F7FA),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 30, left: 25),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Withdraw",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 9, 9, 11)),
                                    ),
                                    Icon(Icons.turn_sharp_right_sharp)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Activity",
                      style: TextStyle(fontSize: 25),
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "See All",
                          style: TextStyle(color: Color(0xff446388)),
                        ))
                  ],
                ),
              ),
              //from file in folder comonents name :grid_from_home.
              Grid_Home(date:"12 August 2022" ,imag:"img/figma.png" ,name:"Figma" ,prise:"20.1 S.A.R" ,),
              Grid_Home(date:"07 August 2022" ,imag:"img/netflix.png" ,name:"Netflix" ,prise:"14.1 S.A.R" ,),
             //////
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 18),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Recent Send Money",style: TextStyle(fontSize: 25),)),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Container(
                  height:115 ,
                  width: MediaQuery.of(context).size.width-25,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Color(0xffFFFFFF)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     Imag_from_last_row(imag1:"img/figma.png" ,),
                     Imag_from_last_row(imag1:"img/tabby.png" ,),
                     Imag_from_last_row(imag1:"img/netflix.png" ,),
                     Imag_from_last_row(imag1:"img/stc.png" ,)
                    ],
                  ),
                ),
                
              )


            ],
          )
        ],
      ),
    );
  }
}
