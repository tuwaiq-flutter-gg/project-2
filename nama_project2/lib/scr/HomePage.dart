import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nama_project2/scr/components/firstPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        //bottomOpacity:[SliverAppBar.large(0.2)],
        //shape: Shadow,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("~ Hi Nama!", style: TextStyle(color: Colors.black)),
            Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 169, 177, 198),
                    shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    Icons.image_rounded,
                    size: 25,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ),
      body: firstPageUp(),
    );
  }
}







                // border: Border.all(

                //   color: Color.fromARGB(255, 179, 60, 51),
                // ),
                //borderRadius: BorderRadius.all(Radius.circular(100))

             



            //         Container(
            //           height: MediaQuery.of(context).size.height,
            //           width: MediaQuery.of(context).size.width/9,
            //           //color: Colors.grey,
            //            decoration: BoxDecoration(
            //   border: Border.all(
            //     color: Color.fromARGB(255, 179, 60, 51),
            //   ),
            //   borderRadius: BorderRadius.all(Radius.circular(90))
            // ),

            //           child: Icon(Icons.image,
            //           size: 14,
            //           ),
            //         ),
          

//       AppBar(
//   leading: IconButton(
//     icon: const BackButtonIcon(),
//     onPressed: () { },
//   )

 