import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class down extends StatelessWidget {
  const down({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                decoration: const ShapeDecoration(
                  color: Color(0xffDCE8F5),
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: const Icon(Icons.image),
                  iconSize: 20,
                  color: Color(0xff283B51),
                  onPressed: () {},
                ),
              ),
              Text('Agus')
            ],
          ),
          Column(
            children: [
              Container(
                decoration: const ShapeDecoration(
                  color: Color(0xffFBE7D0),
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: const Icon(Icons.image),
                  iconSize: 20,
                  color: Color(0xff283B51),
                  onPressed: () {},
                ),
              ),
              Text('Siti')
            ],
          ),
          Column(
            children: [
              Container(
                decoration: const ShapeDecoration(
                  color: Color(0xffD6E3FC),
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: const Icon(Icons.image),
                  iconSize: 20,
                  color: Color(0xff283B51),
                  onPressed: () {},
                ),
              ),
              Text('Udin'),
            ],
          ),
          Column(
            children: [
              Container(
                decoration: const ShapeDecoration(
                  color: Color(0xffDEC6FC),
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: const Icon(Icons.image),
                  iconSize: 20,
                  color: Color(0xff283B51),
                  onPressed: () {},
                ),
              ),
              Text('Tina')
            ],
          ),
        ],
      ),
    );
  }
}
