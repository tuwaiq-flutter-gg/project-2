import 'package:flutter/material.dart';

class secondPageTop extends StatelessWidget {
  const secondPageTop({super.key, required this.scnTopImage});
final Icon scnTopImage;
  @override
  Widget build(BuildContext context) {
    return Container(
              height: MediaQuery.of(context).size.height/22,

              width: MediaQuery.of(context).size.height/22,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.blueGrey
              ),
              child: scnTopImage //Icon(Icons.arrow_back_ios_new_rounded),
            );
  }
}