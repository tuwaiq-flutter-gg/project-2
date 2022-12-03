import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Pages/SendMomeyPage.dart';

class RecentSMButtonsCom extends StatelessWidget {
  const RecentSMButtonsCom({super.key, this.ButtonColor, this.Name, this.PageName});
  final ButtonColor;
  final Name;
  final PageName;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
              height: 63,
              width: 63,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: ButtonColor),
              child: MaterialButton(
                child: Image.asset("images/gallery.png"),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: PageName)),
              )),
          Text(
            Name,
            style: TextStyle(
                color: Color(0xFF283B51),
                fontSize: 14,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

