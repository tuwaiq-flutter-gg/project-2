import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../pages/SendMoney.dart';

class PerdonImage extends StatefulWidget {
  const PerdonImage({super.key});

  @override
  State<PerdonImage> createState() => _PerdonImageState();
}

class _PerdonImageState extends State<PerdonImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
                    padding: EdgeInsets.only(top: 20 , right: 20),
                    

                    child: Container(
                       margin: EdgeInsets.only(left: 1100, bottom: 10),
                      child: InkWell(
                        
                       onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SendMoney()));
                          },
                        child: Container(

                          padding: EdgeInsets.only(bottom: 10),
                          height: 50,
                          width: 50,
                         decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),color: Color(0xffD0DAE6)
                                  ),
                          child: Icon(Icons.photo_library_sharp)
                         
                        ),
                      ),
                    ),
                  ),
    );
  }
}