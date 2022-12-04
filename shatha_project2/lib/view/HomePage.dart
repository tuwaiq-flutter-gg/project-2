
import 'package:flutter/material.dart';
import 'package:shatha_project2/main.dart';
import 'package:shatha_project2/view/SendTo.dart';
import 'package:shatha_project2/view/Statistics.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                color: lightBlue,
                borderRadius: BorderRadius.circular(50)
              ),
              child: Image.asset("images/gallery.png")),
          )
        ],
        centerTitle: false,
        title: Text("~ Hi, Norlanda!" , style: TextStyle(color: darkBlue),),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: ListView(
        children: [

          // Account

          Container(
            height: 250,
            width: 320,
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: lightBlue,
              borderRadius: BorderRadius.circular(25)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Main account", style: TextStyle(color: darkBlue , fontSize: 18),),
                Text("\$154.723.00", style: TextStyle(color: darkBlue , fontSize: 36),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 140,
                      height: 70,
                      decoration: BoxDecoration(
                        color: darkBlue,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text("Topup", style: TextStyle(color: Colors.white , fontSize: 16),),
                          Image.asset("images/receive.png")
                        ],
                      ),
                    ),
                    Container(
                      width: 140,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text("Withdraw", style: TextStyle(color: darkBlue , fontSize: 16),),
                          Image.asset("images/send.png")
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          // Recent Activity
        
          Container(
            height: 220,
            width: 320,
            margin: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Recent Activity", style: TextStyle(color: darkBlue, fontSize: 18),),
                    Text("See All" , style: TextStyle(color: Color(0xff446388) , fontSize: 14),),
                  ],
                ),
                
                // Figma
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (contaxt) => SendTo()));
                  },
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: lightBlue,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset("images/gallery.png"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Figma" , style: TextStyle(color: darkBlue , fontSize: 18),),
                            Text("12 August 2022" , style: TextStyle(color: lightBlue , fontSize: 18),)
                          ],
                        ),
                        Text("\$20.1" , style: TextStyle(color: darkBlue, fontSize: 18),)
                      ],
                    ),
                  ),
                ),
                
                // Netflix
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Statistics()));
                  },
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: lightBlue,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset("images/gallery.png"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Netflix" , style: TextStyle(color: darkBlue , fontSize: 18),),
                            Text("07 August 2022" , style: TextStyle(color: lightBlue , fontSize: 18),)
                          ],
                        ),
                        Text("\$14.1" , style: TextStyle(color: darkBlue, fontSize: 18),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Recent Send Money

          Container(
            height: 150,
            width: 320,
            margin: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recent Send Money" , style: TextStyle(color: darkBlue , fontSize: 18),),
                Container(
                  height: 115,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: lightBlue,
                              borderRadius: BorderRadius.circular(55)
                            ),
                            child: Image.asset("images/gallery.png"),
                          ),
                          Text("Agus", style: TextStyle(color: darkBlue , fontSize: 12),)
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Color(0xffFBE7D0),
                              borderRadius: BorderRadius.circular(55)
                            ),
                            child: Image.asset("images/gallery.png"),
                          ),
                          Text("Siti", style: TextStyle(color: darkBlue , fontSize: 12),)
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: lightBlue,
                              borderRadius: BorderRadius.circular(55)
                            ),
                            child: Image.asset("images/gallery.png"),
                          ),
                          Text("Udin", style: TextStyle(color: darkBlue , fontSize: 12),)
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Color(0xffDEC6FC),
                              borderRadius: BorderRadius.circular(55)
                            ),
                            child: Image.asset("images/gallery.png"),
                          ),
                          Text("Tina", style: TextStyle(color: darkBlue , fontSize: 12),)
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}