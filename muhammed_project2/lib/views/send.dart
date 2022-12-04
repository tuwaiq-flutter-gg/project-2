

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muhammed_project2/components/MyButton.dart';

import '../components/backgrountIcon.dart';
import '../components/mySimpleAppBar.dart';

class send extends StatelessWidget {
  List<String> keys=["1","2","3","4","5","6","7","8","9",",","0","⌫",];
   send({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Color(0xffF5F7FA),
      appBar: AppBar(
        automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,

      title:  Padding(
        padding: const EdgeInsets.all(8.0),
        child:  mySimpleAppBar(left:  InkWell(
          onTap: () =>   Navigator.pop(context),
          child: backgroundIcon(
              centeredIcon: Icon(Icons.arrow_back_ios_new, color: Color(0xff283B51),),
              backgroundColor: Color(0xffD0DAE6,),
              height: 47,
              circular: true,     
            ),
        ), 
          

          right:  backgroundIcon(
            centeredIcon: Icon(Icons.more_horiz, color: Color(0xff283B51),),
            backgroundColor: Color(0xffD0DAE6),
            height: 47,
            circular: true,     
          ),
        )

      ),
      ),




     body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Column(

           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
            SizedBox(height: 20,),
            Text("Send to", style: TextStyle(color: Color(0xff446388), fontSize: 14),),
            Text("Agus Samsudin", style: TextStyle(color: Color(0xff283B51), fontSize: 18),),

            SizedBox(height: 33,),


            Text("\$213.55", style: TextStyle(color: Color(0xff283B51), fontSize: 50),),
           
            Container(
              
              height: 29,
              width: 73,
              margin: EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                color: Color(0xffDCE8F5),
                borderRadius: BorderRadius.circular(17)
              ),
              child: Center(
                child:Text("USD", style: TextStyle(color: Color(0xff283B51), fontSize: 14),),
 
              ),
            ),
           ],
         ),

         Container(
        
          height: MediaQuery.of(context).size.height*.6,
          width: MediaQuery.of(context).size.width,

             decoration: BoxDecoration(
               color: Color(0xffDCE8F5),
               borderRadius: BorderRadius.vertical(top: Radius.circular(40))
             ),
             child: Column(
            
             children: [
               Padding(
                 padding:EdgeInsets.all(25),
                 child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                           Text("Add note..", style: TextStyle(color: Color(0xff446388), fontSize: 18),),
                    
                    Image.asset("images/edit-2.png")
                   ],
                 ),
               ),

               Expanded(
                 child: Stack(
                   children: [
                     Container(
                       alignment: Alignment.topCenter,
                        width: MediaQuery.of(context).size.width,
                           decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.vertical(top: Radius.circular(40))
                                ),
              


              child: 
                        FractionallySizedBox(
                          widthFactor: 1,
                          heightFactor: .66,
                          child: Container(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02),
                            child: GridView.builder(
                              itemCount: 12,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 2
                            
                            ), itemBuilder: (context, index){
                              double i=30;
                              FontWeight font=FontWeight.w600;
                              if( index==9){
                                i=25;
                                font=FontWeight.normal;
                              }
                              if(index==11){
                                return Image.asset("images/Group 950.png");
                              }
                              return Center(child: Text("${keys[index]}", style: TextStyle(color: Color(0xff283B51), fontSize: i, fontWeight: font, ),));
                            }),
                          )
                          ),
                       
                      
                      
               
                     ),
                  
               Container(
              height: MediaQuery.of(context).size.height*0.55,
           
                 child: FractionallySizedBox(
                   heightFactor: 0.34,
                   alignment: Alignment.bottomCenter,
                   child: Container(
                          alignment: Alignment.bottomCenter,
                          height: MediaQuery.of(context).size.height*.187,
                          padding: EdgeInsets.only(top: 30),
                         child: Column(
                           mainAxisAlignment:MainAxisAlignment.spaceBetween,
                           children: [
                             MyButton(height: (MediaQuery.of(context).size.width*.8)/6.5 , borderRadius: (MediaQuery.of(context).size.width*.036),width: MediaQuery.of(context).size.width*.88, buttonColor: Color(0xff283B51), textWidget: Text("Send", style: TextStyle(color: Colors.white),),buttonIcon: Image.asset("images/send.png"), ),
                            
                            Container(
                              height: 5.5,
                              margin: EdgeInsets.only(bottom: 4),
                            
                              width: MediaQuery.of(context).size.width*.42,
                              decoration: BoxDecoration(
                                  color: Color(0xff1F1F1F),
                                borderRadius: BorderRadius.circular(100)
                              ),
                            )
                           ],
                         ),
                          ),
                 ),
               ),
                  
                  
                   ],
                 ),
               ),
             ],

             ),
           ),
         
       ],

      )



    );
  }
}