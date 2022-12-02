// ignore_for_file: file_names, prefer_const_constructors,prefer_const_literals_to_create_immutables, library_private_types_in_public_api, must_be_immutable
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:sharif_project2/src/SendTo.dart';

class SentElement extends StatelessWidget {
  final String name;
  List<Color> colors = [
    Color(0xffD6E3FC),
    Color(0xffDCE8F5),
    Color(0xffDEC6FC),
    Color(0xffFBE7D0),
    Color.fromARGB(255, 198, 174, 147),
    Color.fromARGB(255, 113, 112, 180),
  ];
  SentElement({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SendTo(name: "$name Samsung"),
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 5,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width / 6.5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colors[Random().nextInt(colors.length)],
              ),
              alignment: Alignment.center,
              child: Icon(
                Icons.photo_outlined,
                color: Colors.black,
              ),
            ),
            Text(name),
          ],
        ),
      ),
    );
  }
}
