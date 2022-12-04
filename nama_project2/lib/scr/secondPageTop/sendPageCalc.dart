import 'package:flutter/material.dart';

class secndCalc extends StatelessWidget {
  const secndCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                height: 65,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Add note..',
                  ),
                ),
              ),
              Icon(
                Icons.edit_note,
                color: Color(0xff283B51),
                size: 40,
              ),
            ],
          ),
        );
  }
}