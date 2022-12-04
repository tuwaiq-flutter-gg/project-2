import 'package:flutter/material.dart';
import 'package:muhammed_project2/components/mySimpleAppBar.dart';

import '../components/backgrountIcon.dart';
class appBarTesting extends StatelessWidget {
  const appBarTesting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
    
        title: mySimpleAppBar(left:  backgroundIcon(
            centeredIcon: Image.asset("images/arrow-left.png"),
            backgroundColor: Color(0xffD0DAE6),
            height: 47,
            circular: true,     
          ), 
          
          center:Text("Statistics", style: TextStyle(color: Color(0xff283B51), fontWeight: FontWeight.bold, fontSize: 20),),

          right:  backgroundIcon(
            centeredIcon: Icon(Icons.more_horiz, color: Color(0xff283B51),),
            backgroundColor: Color(0xffD0DAE6),
            height: 47,
            circular: true,     
          ),
        
          ),
      ),

      body: Column(
        children: [
          mySimpleAppBar(left:  backgroundIcon(
            centeredIcon: Icon(Icons.arrow_back_ios_new),
            backgroundColor: Color(0xffD0DAE6),
            height: 47,
            circular: true,     
          ), 
          

          right:  backgroundIcon(
            centeredIcon: Icon(Icons.more_horiz),
            backgroundColor: Color(0xffD0DAE6),
            height: 47,
            circular: true,     
          ),
        ),
             mySimpleAppBar(left:  Text("~ Hi, Norlanda !", style: TextStyle(color: Color(0xff283B51), fontWeight: FontWeight.bold, fontSize: 20),),
          

          right:   backgroundIcon(
            centeredIcon: Image.asset("images/gallery.png"),
            backgroundColor: Color(0xffD0DAE6),
            height: 47,
            circular: true,     
          ),),
                mySimpleAppBar(),
                   mySimpleAppBar(),
                      mySimpleAppBar(),
        ],
      ),
    );
  }
}