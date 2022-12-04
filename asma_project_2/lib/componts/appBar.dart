import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarHomeScrean extends StatefulWidget {
  const AppBarHomeScrean({super.key});

  @override
  State<AppBarHomeScrean> createState() => _AppBarHomeScreanState();
}

class _AppBarHomeScreanState extends State<AppBarHomeScrean> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Text(
        "~ Hi, Norlanda!",
        style: TextStyle(fontSize: 24, color: Color(0xFF283B51)),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Container(
            child: Icon(
              Icons.image,
              color: Color(0xFF292D32),
            ),
            padding: EdgeInsets.all(10),
            height: 47,
            width: 47,
            decoration: BoxDecoration(
              color: Color(0xFFD0DAE6),
              shape: BoxShape.circle,
            ),
          ),
        )
      ],
      backgroundColor: Color(0xFFF5F7FA),
      shadowColor: Color(0xFFE5E5E5),
      elevation: 0,
    );
  }
}
