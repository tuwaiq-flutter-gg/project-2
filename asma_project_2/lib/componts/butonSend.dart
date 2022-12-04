import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class bottonSend extends StatelessWidget {
  const bottonSend({
    super.key,
    required this.controller,
  });

  // final Function n;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Icon(
                  Icons.check,
                  size: 40,
                  color: Colors.green,
                ),
                content: Text("you sund \$${controller.text} "),
              );
            });
      },
      child: Container(
        alignment: Alignment.center,
        height: 70,
        width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
            color: Color(0xFF283B51), borderRadius: BorderRadius.circular(25)),
        // ignore: prefer_const_literals_to_create_immutables
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Send",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Icon(
            Icons.send,
            color: Colors.white,
          )
        ]),
      ),
    );
  }
}
