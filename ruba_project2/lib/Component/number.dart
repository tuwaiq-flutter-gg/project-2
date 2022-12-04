import 'package:flutter/material.dart';

class number extends StatelessWidget {
  const number({super.key, this.title});
final String? title;
  @override
  Widget build(BuildContext context) {
    return
 
      Center(child: Text(title.toString(),style:TextStyle(color: Colors.black,fontSize: 25) ,)
      )

       ;
  }
  }