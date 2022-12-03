import 'package:flutter/material.dart';

class StatsContainers extends StatefulWidget {
  final String day;
  final int lvl;

  const StatsContainers({
    super.key,
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
          height:
              (MediaQuery.of(context).size.height / 3.3) * (widget.lvl / 10),
          width: 35,
          margin: EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width / 90),
            color: Color.fromARGB(255, 166, 182, 189),
          ),
        ),
      ],
    );
  }
}
