import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/constant.dart';

class IncomeAndExpenditure extends StatelessWidget {
  IncomeAndExpenditure({
    super.key,
    this.titleCard,
    this.imageCard,
    this.price,
  });

  String? titleCard;
  double? price;
  String? imageCard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.28,
          width: MediaQuery.of(context).size.width * 0.40,
          decoration: BoxDecoration(
              color: widgetGroundColor,
              borderRadius: BorderRadius.circular(14)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("${imageCard}"),
              Text(
                titleCard!,
                style: const TextStyle(color: secondaryTextColor, fontSize: 18),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Divider(
                  height: 10,
                  thickness: 2,
                ),
              ),
              Text(
                "\$${price.toString()}",
                style: const TextStyle(fontSize: 22, color: primaryColor),
              )
            ],
          )),
    );
  }
}
