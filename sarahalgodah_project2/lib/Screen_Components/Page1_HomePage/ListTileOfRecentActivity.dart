import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/constant.dart';

class ListTileOfRecentActivity extends StatelessWidget {
  ListTileOfRecentActivity({
    super.key,
    required this.title,
    required this.subTitle,
    required this.money,
  });
 final String title;
  final String subTitle;
  final double money;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        title: Text(
          title.toString(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subTitle.toString()),
        trailing: Text(
          "\$${money.toString()}",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: widgetGroundColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.asset("images/gallery.png"),
        ),
      ),
    );
  }
}
