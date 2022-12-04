import 'package:flutter/material.dart';
import 'package:nama_project2/scr/components/recents.dart';
import 'package:nama_project2/scr/components/bottomImages.dart';
import 'package:nama_project2/scr/components/textImagePupDraw.dart';
import 'package:nama_project2/scr/secondPageTop/secondPage.dart';
import 'package:nama_project2/scr/thirdPage/thirdPage.dart';

class firstPageUp extends StatelessWidget {
   firstPageUp({super.key});
  final double balance= 40000000;
final TextEditingController controlor=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: MediaQuery.of(context).size.height / 3,

            padding: EdgeInsets.all(25),
            //decoration: BoxDecoration(shape: BorderRadius(Radius)).,
            color: Color(0xffDCE8F5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Main account",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$ $balance",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:  [
                    InkWell(
                      child: ImagePupDraw(
                        exchange: "Topup",
                        exImage: "images/arrow.png",
                        exColor: Color(0xff283B51),
                        exFontColor: Color(0xffffffff),
                      ),
                      onTap: () {
                      
                        Navigator.push(
                        context,
                          MaterialPageRoute(builder: (context) =>  secondPageUp(controlor: controlor,)),
                             );},
                    ),
                    InkWell(
                      child: ImagePupDraw(
                        exchange: "Withdraw",
                        exImage: "images/arrow.png",
                        exColor:Color(0xffffffff) ,
                         exFontColor: Color(0xff283B51),
                      ),
                        onTap: () {
                      
                        Navigator.push(
                        context,
                          MaterialPageRoute(builder: (context) =>  thirdPage()),
                             );},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              recentText( recentTxt: "Recet Activity"),
             Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Text(
                  "See All",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ),
        
        InkWell(child: recents(midImage: Icon(Icons.image),midName: "Figma",midDate: "12 August 2022",midPrice: "\$20.1",),
         onTap: () {
                      
                        Navigator.push(
                        context,
                          MaterialPageRoute(builder: (context) =>  secondPageUp(controlor: controlor,)),
                             );},),
        InkWell(child: recents(midImage: Icon(Icons.image),midName: "Netflix",midDate: "07 August 2022",midPrice: "\$14.1",),
         onTap: () {
                      
                        Navigator.push(
                        context,
                          MaterialPageRoute(builder: (context) =>  thirdPage()),
                             );},),
        SizedBox(height: 20,),
        recentText( recentTxt: "Recent Send Money"),
        
        ClipRRect(
          child: Container(
            height: MediaQuery.of(context).size.height/15,
            margin: EdgeInsets.all(15),
            color: Colors.white,
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                bottomImages(bottomImage: Icon(Icons.image),bottomColor: Colors.blueGrey,),
                bottomImages(bottomImage: Icon(Icons.image),bottomColor: Color.fromARGB(255, 153, 151, 113),),
                bottomImages(bottomImage: Icon(Icons.image),bottomColor: Color.fromARGB(255, 61, 95, 112),),
                bottomImages(bottomImage: Icon(Icons.image),bottomColor: Color.fromARGB(255, 112, 83, 115),),

              ],
            ),

            //
          ),

        )
      ],
    );
  }
}





                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(14),
                    //   child: Container(
                    //     height: MediaQuery.of(context).size.height / 13,
                    //     width: MediaQuery.of(context).size.width / 2.7,
                    //     color: Colors.white,
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       children: [
                    //         Container(
                    //             padding: EdgeInsets.only(left: 10),
                    //             child: Text("Topup",
                    //                 style: TextStyle(
                    //                     fontSize: 15,
                    //                     fontWeight: FontWeight.bold))),
                    //         Container(
                    //             height:
                    //                 MediaQuery.of(context).size.height / 30,
                    //             width: MediaQuery.of(context).size.width / 6,
                    //             child: Image.asset(
                    //               "images/arrow.png",
                    //             )),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // ClipRRect(
                    //   borderRadius:
                    //     BorderRadius.circular(20),
                    //   child: Container(

                    //     height: MediaQuery.of(context).size.height/15,
                    //     color: Colors.white,
                    //     child: TextButton.icon(
                    //       onPressed: (){},

                    //       icon:Icon(Icons.radar,
                    //       size: 33,),

                    //       label: Text("Topup"),),
                    //   ),
                    // ),
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(12),
                    //   child: Expanded(
                    //     child: Container(
                    //       height: MediaQuery.of(context).size.height / 12,
                    //       width: MediaQuery.of(context).size.width / 2.7,
                    //       color: Colors.white,
                    //       child: Expanded(
                    //         flex: 22,
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           children: [
                    //             Expanded(
                    //               flex: 66,
                    //               child: Container(
                                    
                    //                 padding: EdgeInsets.only(left: 6),
                    //                 child: Text(
                    //                   "Withdraw",
                    //                   style: TextStyle(
                    //                       fontSize: 13,
                    //                       fontWeight: FontWeight.bold),
                    //                   textAlign: TextAlign.center,
                    //                 ),
                    //               ),
                    //             ),
                    //             Container(
                    //                 height:
                    //                     MediaQuery.of(context).size.height / 30,
                    //                 width: MediaQuery.of(context).size.width / 5,
                    //                 child: Image.asset(
                    //                   "images/arrow.png",
                    //                 )),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Container(
                    //   color: Colors.white,
                    //   child: Row(
                    //     children: [
                    //       Text("ooo"),
                    //       //Image.asset(""),
                    //       Icon(Icons.arrow_circle_up_sharp)
                    //     ],
                    //   ),
                    // )
