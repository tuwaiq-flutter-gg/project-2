// ignore_for_file: file_names, prefer_const_constructors,prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sharif_project2/components/NumPad.dart';

class CustomSheet extends StatelessWidget {
  final TextEditingController controller;
  final TextEditingController? note;

  const CustomSheet({super.key, required this.controller, this.note});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.width / 6,
                width: MediaQuery.of(context).size.width / 1.5,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Add note..',
                    isDense: true,
                  ),
                ),
              ),
              Icon(
                Icons.note_alt_outlined,
                color: Colors.black,
                size: MediaQuery.of(context).size.width / 13,
              ),
            ],
          ),
        ),
        NumPad(
          buttonSize: 60,
          controller: controller,
        ),
      ],
    );
  }
}
