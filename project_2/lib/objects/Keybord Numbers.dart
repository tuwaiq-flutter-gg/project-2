import 'package:flutter/material.dart';
import 'package:project_2/objects/Numbers.dart';

class KeybordNumber extends StatelessWidget {
  const KeybordNumber({super.key, required this.control});
  final TextEditingController control;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            //alignment: Alignment.center,
            height: 486,
            width: 375,
            color: Colors.white,
            child: Container(
                color: Colors.white,
                alignment: Alignment.topLeft,
                height: 22,
                width: MediaQuery.of(context).size.width / 2,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        child: TextField(
                            decoration: InputDecoration(
                          labelText: 'Add note..',
                          isDense: true,
                        )),
                      ),
                      //Text("Add Note..."),
                      Icon(
                        Icons.note_alt_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    ],
                  ),
                )),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 316,
            width: 375,
            color: Colors.white,
            child: Column(
              children: [
                Wrap(children: [
                  NumberButton(keyNumber: "1", keyContrl: control),
                  NumberButton(keyNumber: "2", keyContrl: control),
                  NumberButton(keyNumber: "3", keyContrl: control),
                  NumberButton(keyNumber: "4", keyContrl: control),
                  NumberButton(keyNumber: "5", keyContrl: control),
                  NumberButton(keyNumber: "6", keyContrl: control),
                  NumberButton(keyNumber: "7", keyContrl: control),
                  NumberButton(keyNumber: "8", keyContrl: control),
                  NumberButton(keyNumber: "9", keyContrl: control),
                  NumberButton(keyNumber: ",", keyContrl: control),
                  NumberButton(keyNumber: "0", keyContrl: control),
                  Container(
                    color: Colors.white,
                    height: 224 / 4,
                    width: 360 / 3,
                    child: IconButton(
                      onPressed: () {
                        if (control.text.length > 0) {
                          control.text = control.text
                              .substring(0, control.text.length - 1);
                        }
                      },
                      icon: Icon(
                        Icons.backspace_outlined,
                        size: 25,
                      ),
                      iconSize: 40,
                    ),
                  ),
                ]),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        maximumSize: Size(327, 50)),
                    onPressed: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 327,
                        height: 50,
                        color: Color(0xFF283B51),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Send"),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.send_outlined)
                            ]),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
