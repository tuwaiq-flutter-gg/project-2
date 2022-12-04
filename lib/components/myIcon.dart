import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyIcon extends StatelessWidget {
  MyIcon({
    super.key,
    this.svgPicturePath = "assets/icons/gallery.svg",
    this.backGroundColor = Colors.grey,
    this.size = 50,
  });
  MyIcon.label({
    super.key,
    this.svgPicturePath = "assets/icons/gallery.svg",
    this.backGroundColor = Colors.grey,
    this.size = 50,
    required this.label,
  });

  final String svgPicturePath;
  String? label;
  final double size;
  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return label == null
        ? Container(
            padding: EdgeInsets.all(size / 3.9),
            height: size,
            width: size,
            decoration: BoxDecoration(
              color: backGroundColor,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgPicturePath),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                padding: svgPicturePath == "assets/icons/gallery.svg"
                    ? EdgeInsets.all(size / 3.9)
                    : const EdgeInsets.all(0),
                height: size,
                width: size,
                decoration: BoxDecoration(
                  color: backGroundColor,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(svgPicturePath),
              ),
              Text(
                label!,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0XFF283B51),
                ),
              ),
            ],
          );
  }
}
