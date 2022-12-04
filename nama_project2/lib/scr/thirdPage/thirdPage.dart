import 'package:flutter/material.dart';
import 'package:nama_project2/scr/secondPageTop/secondPageTop.dart';

class thirdPage extends StatelessWidget {
  const thirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 239, 244),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 240, 239, 244),
        foregroundColor: Color.fromARGB(255, 54, 93, 125),
        elevation: 0,
         title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 1,),
              // secondPageTop(
              //   scnTopImage: Icon(Icons.arrow_back_ios_new_rounded),
              // ),
              Title(color: Color.fromARGB(255, 8, 23, 47),
              child: Text("Statistics",style: TextStyle(color: Color.fromARGB(255, 9, 31, 48)),)),
              secondPageTop(
                scnTopImage: Icon(Icons.more_horiz_rounded),
              )
            ],
          ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(23),
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  height: 75,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(14),
                  color: Color.fromARGB(255, 222, 228, 232),),
                  child: 
                  Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Spacer(flex: 5,),
                      Text("Your Balance",style: TextStyle(fontSize: 17)),

                      Spacer(flex: 1,),
                      
                      Text("\$40,000,000",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),

                      Spacer(flex: 5,),
                    ],
                  ),
                  
                ),
                SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Statics(hiStat: 130,),
                        Text("Sun")
                      ],

                    ),
                     Column(
                      children: [
                        Statics(hiStat: 120,),
                        Text("Mon")
                      ],

                    ),
                     Column(
                      children: [
                        Statics(hiStat: 90,),
                        Text("Tue")
                      ],

                    ),
                     Column(
                      children: [
                        Statics(hiStat: 190,),
                        Text("Wed")
                      ],

                    ),
                     Column(
                      children: [
                        Statics(hiStat: 150,),
                        Text("Thu")
                      ],

                    ),
                    
                    
                  ],
                ),
                SizedBox(height: 45,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                      Container(
                      height: MediaQuery.of(context).size.height/3.5,
                      width:  MediaQuery.of(context).size.width/3,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(11),
                      color: Color.fromARGB(255, 212, 223, 232),),
                      padding: EdgeInsets.all(22),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Icon(Icons.swipe_down_outlined),
                          ),
                          Text("Income"),
                          Text("________",style: TextStyle(color: Colors.grey[500]),),

                          Text("\$25.245",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),

                       
                       
                        ],
                      ),
                    ),
                    SizedBox(width: 33,),

                     Container(
                      height: MediaQuery.of(context).size.height/3.5,
                      width:  MediaQuery.of(context).size.width/3,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(11),
                      color: Color.fromARGB(255, 212, 223, 232),),
                      padding: EdgeInsets.all(22),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Icon(Icons.swipe_up_outlined),
                          ),
                          Text("Expenditure"),
                          Text("________",style: TextStyle(color: Colors.grey[500]),),

                          Text("\$47.51",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),

                       
                       
                        ],
                      ),
                    ),

                  ],
                )
              ],
            ),
          )

      ]),
    );
  }
}

class Statics extends StatelessWidget {
  const Statics({super.key, required this.hiStat});
  final double hiStat;

  @override
  Widget build(BuildContext context) {
    return Container(
height: hiStat,
 width: MediaQuery.of(context).size.width/11,
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width / 90),
         
            color: Color.fromARGB(255, 166, 182, 189),
          ),
        
    );
  }
}
