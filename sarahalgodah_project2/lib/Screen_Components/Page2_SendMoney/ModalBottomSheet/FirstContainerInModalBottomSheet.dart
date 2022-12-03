
import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/constant.dart';

class FirstContainerInModalBottomSheet extends StatelessWidget {
  const FirstContainerInModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: defaultPadding,
          left: defaultPadding,
          right: defaultPadding,
          bottom: 8),
      width: 486,
      child: const TextField(
            cursorColor: primaryColor,
            decoration: InputDecoration(
              hintText: "Add note...",
              hintStyle: TextStyle(
                  color: primaryTextColor, fontSize: 18),
              suffixIcon: Icon(
                Icons.edit_note_sharp,
                size: 30,
              ),
              suffixIconColor: primaryColor, 
              border: InputBorder.none,
            ),
          ),
     
    );
  }
}

