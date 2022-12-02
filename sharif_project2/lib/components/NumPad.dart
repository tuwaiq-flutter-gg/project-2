// ignore_for_file: file_names, prefer_const_constructors,prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sharif_project2/components/NumPadButton.dart';

class NumPad extends StatelessWidget {
  final double buttonSize;
  final TextEditingController controller;

  const NumPad({
    Key? key,
    required this.buttonSize,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(MediaQuery.of(context).size.width / 10),
          topRight: Radius.circular(MediaQuery.of(context).size.width / 10),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumPadButton(
                number: "1",
                size: buttonSize,
                controller: controller,
              ),
              NumPadButton(
                number: "2",
                size: buttonSize,
                controller: controller,
              ),
              NumPadButton(
                number: "3",
                size: buttonSize,
                controller: controller,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumPadButton(
                number: "4",
                size: buttonSize,
                controller: controller,
              ),
              NumPadButton(
                number: "5",
                size: buttonSize,
                controller: controller,
              ),
              NumPadButton(
                number: "6",
                size: buttonSize,
                controller: controller,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumPadButton(
                number: "7",
                size: buttonSize,
                controller: controller,
              ),
              NumPadButton(
                number: "8",
                size: buttonSize,
                controller: controller,
              ),
              NumPadButton(
                number: "9",
                size: buttonSize,
                controller: controller,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumPadButton(
                number: ",",
                size: buttonSize,
                controller: controller,
              ),
              NumPadButton(
                number: "0",
                size: buttonSize,
                controller: controller,
              ),
              IconButton(
                onPressed: () {
                  if (controller.text.length > 1) {
                    controller.text = controller.text
                        .substring(0, controller.text.length - 1);
                  }
                },
                icon: Icon(
                  Icons.backspace_outlined,
                  color: Colors.black,
                  size: buttonSize / 3,
                ),
                iconSize: buttonSize - 18,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  insetPadding: EdgeInsets.zero,
                  content: Text(
                    "You Sent ${controller.text.length > 1 ? controller.text : "\$0"}",
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize:
                    Size.fromHeight(MediaQuery.of(context).size.width / 9),
                backgroundColor: Color(0xff283B51),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Send'),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.send_outlined,
                      size: MediaQuery.of(context).size.width / 20,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
