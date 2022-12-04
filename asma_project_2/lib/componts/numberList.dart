import 'package:asma_project_2/componts/buttonNumber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NumberList extends StatelessWidget {
  const NumberList({
    super.key,
    required this.controller,
    required this.delete,
    // required this.onSubmit
  });

  final TextEditingController controller;
  final Function delete;
  // final Function onSubmit;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: Expanded(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BouttonNumber(
                    controller: controller,
                    number: 1,
                  ),
                  BouttonNumber(
                    controller: controller,
                    number: 2,
                  ),
                  BouttonNumber(
                    controller: controller,
                    number: 3,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BouttonNumber(
                    controller: controller,
                    number: 4,
                  ),
                  BouttonNumber(
                    controller: controller,
                    number: 5,
                  ),
                  BouttonNumber(
                    controller: controller,
                    number: 6,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BouttonNumber(
                    controller: controller,
                    number: 7,
                  ),
                  BouttonNumber(
                    controller: controller,
                    number: 8,
                  ),
                  BouttonNumber(
                    controller: controller,
                    number: 9,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    ",",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF283B51)),
                  ),
                  BouttonNumber(
                    controller: controller,
                    number: 0,
                  ),
                  IconButton(
                      onPressed: () => delete(),
                      icon: Icon(
                        Icons.backspace,
                      )),
                ],
              ),
            ]),
      ),
    );
  }
}
