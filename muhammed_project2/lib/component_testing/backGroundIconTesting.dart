import 'package:flutter/material.dart';
import 'package:muhammed_project2/components/backgrountIcon.dart';

class backgroundIconTesting extends StatelessWidget {
  const backgroundIconTesting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //  Icon(Icons.arrow_back_ios)

           
          backgroundIcon(
            centeredIcon: Icon(Icons.arrow_back_ios_new),
            backgroundColor: Color(0xffD0DAE6),
            height: 47,
            circular: true,     
          ),
          backgroundIcon(
            centeredIcon: Icon(Icons.more_horiz),
            backgroundColor: Color(0xffD0DAE6),
            height: 47,
            circular: true,     
          ),

            backgroundIcon(
            centeredIcon: Image.asset("images/gallery.png"),
            backgroundColor: Color(0xffD0DAE6),
            height: 63,
            circular: false,     
          ),

             backgroundIcon(
            centeredIcon: Image.asset("images/gallery.png"),
            backgroundColor: Color(0xffD0DAE6),
            height: 56,
            circular: true,  
            text: Text("Augs"),   
          ),

            backgroundIcon(
            centeredIcon: Image.asset("images/gallery.png"),
            backgroundColor: Color(0xffFBE7D0),
            height: 56,
            circular: true,  
            text: Text("Siti"),   
          ),

            backgroundIcon(
            centeredIcon: Image.asset("images/gallery.png"),
            backgroundColor: Color(0xffD0DAE6),
            height: 56,
            circular: true,  
            text: Text("Udin"),   
          ),

            backgroundIcon(
            centeredIcon: Image.asset("images/gallery.png"),
            backgroundColor: Color(0xffDEC6FC),
            height: 56,
            circular: true,  
            text: Text("Tina"),   
          ),

             backgroundIcon(
            centeredIcon: Image.asset("images/Vector.png"),
            backgroundColor: Color.fromARGB(0, 222, 198, 252),
            height: 56,
            circular: false,  
            text: Text("Income",
            
            style: TextStyle(
              color: Color(0xff446388),
              fontSize: 18,
              

            ),
            ),   
          ),
             backgroundIcon(
            centeredIcon: Image.asset("images/VectorUp.png"),
            backgroundColor: Color.fromARGB(0, 222, 198, 252),
            height: 56,
            circular: false,  
            text: Text("Expedtiure",
            
            style: TextStyle(
              color: Color(0xff446388),
              fontSize: 18,
              

            ),
            ),   
          ),
        ],
      ),
    );
  }
}
