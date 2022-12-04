import 'package:flutter/material.dart';

class MyKeyBoard extends StatelessWidget {
  const MyKeyBoard({super.key, required this.number, required this.controlor});
 final double size =75 ;final String number ;
 final TextEditingController controlor;
  @override
  Widget build(BuildContext context) {
   
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(100),
        ),
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      width: size,
      height: size,
      child: TextButton(
        onPressed: () {
         controlor.text += number.toString();
        },
        child: Center(
          child: Text(
            number.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 113, 134, 158),
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}