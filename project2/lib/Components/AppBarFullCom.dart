import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarFullCom extends StatelessWidget with PreferredSizeWidget {
  AppBarFullCom({
    super.key,
    this.Title,
    this.boolCenterTitle,
  });
  final String? Title;
  final bool? boolCenterTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFF5F7FA),
      elevation: 0,
      leading: MaterialButton(
        padding: EdgeInsets.all(1),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Container(
            margin: EdgeInsets.only(left: 7),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFD0DAE6),
            ),
            child: Icon(Icons.arrow_back_ios_new)),
      ),
      //
      centerTitle: boolCenterTitle,
      title: Text(
        Title.toString(),
        style: TextStyle(color: Color(0xFF283B51)),
      ),
      actions: [
        MaterialButton(
          onPressed: () {},
          child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFD0DAE6),
              ),
              child: Icon(Icons.more_horiz)),
        )
      ],
    );
  }

  //
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
