import 'package:flutter/material.dart';

List NumKeyboard = [1, 2, 3, 4, 5, 6, 7, 8, 9, ",", 0, "p"];

class NumbersKeyboard extends StatelessWidget {
  const NumbersKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.36,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: GridView.builder(
          itemCount: NumKeyboard.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, childAspectRatio: 1.7),
          itemBuilder: (BuildContext context, int index) {
            if (index == NumKeyboard.length - 1)
              return GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.backspace_outlined,
                  size: 15,
                ),
              );
            else
              return GestureDetector(
                onTap: () {},
                child: Text(
                  NumKeyboard[index].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff283B51),
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              );
          },
        ),
      ),
    );
  }
}
