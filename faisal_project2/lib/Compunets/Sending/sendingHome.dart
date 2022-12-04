import 'package:faisal_project2/Compunets/Sending/keyboard.dart';
import 'package:faisal_project2/Compunets/Spaces.dart';
import 'package:faisal_project2/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class sendingHome extends StatefulWidget {
  sendingHome({
    super.key,
    required this.control,
  });
  final TextEditingController control;
  @override
  State<sendingHome> createState() => _sendingHomeState();
}

class _sendingHomeState extends State<sendingHome> {
  @override
  Widget build(BuildContext context) {
    return (ListView(
      children: [
        Column(
          children: [
            spaces(size: 10),
            Text("Send to"),
            Text("Fasial Alharbi"),
            spaces(size: 50),
            Center(
              child: TextField(
                controller: widget.control,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: bb,
                ),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.none,
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: dd,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    context: context,
                    builder: (context) => (keyboard(
                      control: widget.control,
                    )),
                  );
                },
                decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: bb,
                    hintText: "\$00.00"),
              ),
            ),
            Container(
              child: Center(
                child: Text("USD"),
              ),
              height: 25,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: dd),
            )
          ],
        ),
      ],
    ));
  }
}
