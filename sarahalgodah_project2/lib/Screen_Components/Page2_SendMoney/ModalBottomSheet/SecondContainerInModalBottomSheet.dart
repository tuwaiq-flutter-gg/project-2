import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/Screen_Components/BlackLastLine.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page2_SendMoney/SendButton.dart';
import 'package:sarahalgodah_project2/constant.dart';

class SecondContainerInModalBottomSheet extends StatelessWidget {
  SecondContainerInModalBottomSheet({super.key});
  List keyBoard = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    ',',
    '0',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(35))),
              height: 416,
              child: Stack(
                children: [
                  GridView.builder(
                      padding: const EdgeInsets.all(30),
                      itemCount: keyBoard.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3, childAspectRatio: 16 / 7),
                      itemBuilder: (context, index) => Center(
                              child: TextButton(
                            child: Text(
                              keyBoard[index].toString(),
                              style: const TextStyle(
                                  color: primaryColor, fontSize: 30),
                            ),
                            onPressed: () {},
                          ))),
                  Positioned(
                    top: 190,
                    left: 292,
                    child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          "images/icons8-clear-symbol-24.png",
                        )),
                  ),
                  const SendButton(),
                  Positioned(
                    top: 310,
                    left: 115,
                    child: BlackLastLine()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
