import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StatisticsRatio extends StatelessWidget {
  const StatisticsRatio({super.key, required this.Height, required this.Width,required this.ColumnColor, required this.Day});
  final double Height;
  final double Width;
  final ColumnColor;
  final String Day;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Height,
          width: Width,
          decoration: BoxDecoration(
              color: ColumnColor,
              border: Border.all(width: 1, color: Color(0xFFD3DDE9)),
              borderRadius: BorderRadius.circular(5)),
        ),
        SizedBox(
          height: 15,
        ),
        Text(Day,
            style: TextStyle(
                color: Color(0xFF4F6C8F),
                fontSize: 15,
                fontWeight: FontWeight.w500))
      ],
    );
  }
}
