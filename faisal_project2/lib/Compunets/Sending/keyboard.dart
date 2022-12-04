import 'package:faisal_project2/Compunets/Sending/Numbers.dart';
import 'package:faisal_project2/Compunets/Spaces.dart';
import 'package:faisal_project2/main.dart';

import 'package:flutter/material.dart';

class keyboard extends StatefulWidget {
  const keyboard({super.key, required this.control});
  final TextEditingController control;
  @override
  State<keyboard> createState() => _keyboardState();
}

class _keyboardState extends State<keyboard> {
  final TextEditingController control = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (ListView(
      children: [
        const spaces(size: 20),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Add Note..."),
              Icon(Icons.edit),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 5, top: 20, right: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    numbers(
                      number: "1",
                      control: control,
                    ),
                    numbers(
                      number: "2",
                      control: control,
                    ),
                    numbers(
                      number: "3",
                      control: control,
                    ),
                  ],
                ),
                spaces(size: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    numbers(
                      number: "4",
                      control: control,
                    ),
                    numbers(
                      number: "5",
                      control: control,
                    ),
                    numbers(
                      number: "6",
                      control: control,
                    ),
                  ],
                ),
                spaces(size: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    numbers(
                      number: "7",
                      control: control,
                    ),
                    numbers(
                      number: "8",
                      control: control,
                    ),
                    numbers(
                      number: "9",
                      control: control,
                    ),
                  ],
                ),
                spaces(size: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    numbers(
                      number: ",",
                      control: control,
                    ),
                    numbers(
                      number: "0",
                      control: control,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              MediaQuery.of(context).size.width / 10),
                          topRight: Radius.circular(
                              MediaQuery.of(context).size.width / 10),
                        ),
                        color: Colors.white,
                      ),
                      width: 40,
                      height: 40,
                      child: TextButton(
                        onPressed: () {},
                        child: Center(
                          child: Icon(
                            Icons.delete,
                            color: dd,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                spaces(size: 20),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      maximumSize: Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: dd,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Send",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.send)
                      ],
                    ),
                  ),
                ),
                spaces(size: 20),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
