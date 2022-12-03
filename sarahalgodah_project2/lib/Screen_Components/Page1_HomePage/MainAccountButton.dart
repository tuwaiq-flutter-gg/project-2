import 'package:flutter/material.dart';

class MainAccountButton extends StatelessWidget {
  const MainAccountButton({
    super.key,
    required this.buttonColor,
    required this.buttonTitle,
    required this.textColor,
    required this.buttonImage,
  });

  final Color? buttonColor;
  final String? buttonTitle;
  final Color? textColor;
  final String? buttonImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(18),
            height: 68,
            width: 140,
            decoration: BoxDecoration(
                color: buttonColor, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  buttonTitle!,
                  style: TextStyle(color: textColor, fontSize: 17),
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "${buttonImage}",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
