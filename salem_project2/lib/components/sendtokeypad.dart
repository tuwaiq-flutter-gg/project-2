import 'package:flutter/material.dart';
import 'package:salem_project2/components/numpad.dart';

class SendPad extends StatelessWidget {
  final TextEditingController controller;

  const SendPad({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
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
        ),
        NumPad(
            buttonSize: 50,
            iconColor: Color(0xff283B51),
            controller: controller,
            delete: () {
              controller.text =
                  controller.text.substring(0, controller.text.length - 1);
            },
            onSubmit: () {
              Navigator.pop(context);
            })
      ],
    );
  }
}
