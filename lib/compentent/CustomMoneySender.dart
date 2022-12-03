import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class customMoneySender extends StatelessWidget {
  const customMoneySender(
      {super.key,
      required this.name,
      required this.imageURL,
      required this.color,
      this.onTap});
  final String name;
  final String imageURL;
  final Color color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.15,
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
                child: const FaIcon(
              FontAwesomeIcons.image,
              size: 30,
            )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
          Text(
            name.toString(),
            style: TextStyle(
                color: Color(0xff283B51),
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
