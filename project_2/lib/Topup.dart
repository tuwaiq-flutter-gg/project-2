import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Topup extends StatelessWidget {
  const Topup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon:Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Icon(Icons.arrow_circle_left_sharp))) ),
                    IconButton(
                onPressed: () {
                },
                icon:Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    child: Icon(Icons.more_horiz_sharp))) ),
              ],
            ),
          )
         

        ],
      ),
    );
  }
}
