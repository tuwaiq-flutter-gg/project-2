import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarCom extends StatelessWidget with PreferredSizeWidget {
  AppBarCom(
      {super.key, this.Title, this.boolCenterTitle, this.IconImageAction});
  final String? Title;
  final bool? boolCenterTitle;
  final String? IconImageAction;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFF5F7FA),
      elevation: 0,
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
            child: Image.asset(IconImageAction.toString()),
          ),
        )
      ],
    );
  }

  //
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
