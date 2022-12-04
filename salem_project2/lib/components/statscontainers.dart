import 'package:flutter/material.dart';

class StatsContainers extends StatefulWidget {
  final String day;
  final int lvl;
  final Color colorw;

  StatsContainers({
    super.key,
    required this.colorw,
    required this.day,
    required this.lvl,
  });

  @override
  State<StatsContainers> createState() => _StatsContainersState();
}

class _StatsContainersState extends State<StatsContainers> {
  @override
  Widget build(BuildContext context) {
    return Column(
      verticalDirection: VerticalDirection.up,
      children: [
        Text(widget.day),
        Container(
          height: (MediaQuery.of(context).size.height / 4) * (widget.lvl / 10),
          width: 35,
          margin: EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            color: widget.colorw,
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width / 90),
          ),
        ),
      ],
    );
  }
}
