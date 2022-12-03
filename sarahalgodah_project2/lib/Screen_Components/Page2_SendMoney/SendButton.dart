
import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/constant.dart';

class SendButton extends StatelessWidget {
  const SendButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
       top: 235,
       left: 40,
      child: SizedBox(
        height: 50,
        width: 320,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
              maximumSize: const Size(320, 50),
              backgroundColor:
                  primaryColor,
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Send\t", style: TextStyle(
                  fontSize: 16
                ),),
                Image.asset("images/send.png"),
              ],
            )),
      ),
    );
  }
}
