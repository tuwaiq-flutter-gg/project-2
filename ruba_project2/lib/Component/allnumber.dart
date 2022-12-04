import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruba_project2/Component/number.dart';

class allnumber extends StatelessWidget {
  const allnumber({super.key});

  @override
  Widget build(BuildContext context) {
    return  
    Container(
      // height:(MediaQuery.of(context).size.height/2)-30,
      height: 350, 
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // margin: EdgeInsets.only(top: 20),
            height: (MediaQuery.of(context).size.height/2)-70,
            child:GridView(   
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisExtent: 60,
                        ),
                        //padding: const EdgeInsets.all(5),
                       children: [
                       number(title:"1"),
                       number(title:"2"),
                       number(title:"3"),
                       number(title:"4"),
                       number(title:"5"),
                       number(title:"6"),
                       number(title:"7"),
                       number(title:"8"),
                       number(title:"9"),
                       number(title:","),
                       number(title:"0"),
                       Center(child:  Padding(
                        padding: const EdgeInsets.all(15.0),
                         child:Image.asset("images/delete.png"),)),
                       ],),
                       ),
                       Container(
                    height: 40,
                    width: 350,
                     decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                  color: Color(0xff283B51),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("send",style: TextStyle(color: Colors.white,fontSize: 16),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("images/send.png",color: Colors.white,scale: 0.35),
                    )
                  ],
                ),
                   ),
        ],
      ),
    )
  ;
  }
}