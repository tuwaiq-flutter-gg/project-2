import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class customButtonDark extends StatelessWidget {
  const customButtonDark({super.key, this.title, this.onPressed});
  final String? title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height * 0.05,
            child: ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 0,
                    primary: Color(0xff283B51),
                    shadowColor: Colors.transparent),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title.toString(),
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/images/sendsend.jpg",
                      width: 20,
                      height: 20,
                    )
                  ],
                )),
          ),
        ),
      ],
    );
  }
}
