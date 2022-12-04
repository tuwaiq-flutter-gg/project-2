

import 'package:flutter/material.dart';
import 'package:shatha_project2/main.dart';

class SendTo extends StatelessWidget {
  const SendTo({super.key});

  @override
  Widget build(BuildContext context) {
    var numbersPad = ["1", "2", "3", "4", "5", "6", "7", "8", "9", ",", "0", Icon(Icons.backspace_outlined)];
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 40,
                  width: 40,
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    color: lightBlue,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Icon(Icons.arrow_back_ios_new , color: darkBlue,)
            ),
          ),
        ),
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
              child: Icon(Icons.more_horiz , color: darkBlue,)),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Send to" , style: TextStyle(color: darkBlue , fontSize: 14),),
          Text("Agus Samsudin" , style: TextStyle(color: darkBlue , fontSize: 18),),
          Text("\$213.55" , style: TextStyle(color: darkBlue , fontSize: 50),),
          Container(
            height: 30,
            width: 70,
            decoration: BoxDecoration(
              color: lightBlue,
              borderRadius: BorderRadius.circular(17)
            ),
            child: Center(child: Text("USD" , style: TextStyle( color: darkBlue, fontSize: 14 ),)),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.60,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
              // container Add note
              Container(
                height: MediaQuery.of(context).size.height * 0.60,
                decoration: BoxDecoration(
                  color: lightBlue,
                  borderRadius: BorderRadius.circular(40)
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Add note... " , style: TextStyle(color: darkBlue , fontSize: 16),),
                        Icon(Icons.edit)
                      ],
                    ),
                  ),
                ),
              ),

              // container the numbers pad
              Container(
                height: MediaQuery.of(context).size.height * 0.50,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40)
                ),
                child: GridView.builder(
                  itemCount: numbersPad.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 1.9),
          itemBuilder: (BuildContext context, int index) {
            if (index == numbersPad.length-1) {
              return Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {},
                  child: numbersPad[index] as Icon
                ),
              );
            } else {
              return TextButton(
                onPressed: () { },
                child: Text(
                  numbersPad[index].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: darkBlue,fontSize: 24,),
                ),
              );
            }
          },
        ),
              )
            ]),
          )
        ],
      ),
    );
  }
}