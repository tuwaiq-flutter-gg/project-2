import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class moreButton extends StatelessWidget {
  final action;
  final Color shapeColor;
  final Icons;
  final Color iconeColor;
  const moreButton(
      {super.key,
      this.action,
      required this.shapeColor,
      required this.Icons,
      required this.iconeColor});

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
        color: shapeColor,
        shape: CircleBorder(),
      ),
      child: IconButton(
        icon: Icon(Icons),
        color: iconeColor,
        onPressed: () {
          action;
        },
      ),
    );
  }
}

class staticContainer extends StatelessWidget {
  final Hight;
  final String day;
  final Color color;

  // final Color color;

  const staticContainer({
    super.key,
    required this.Hight,
    required this.day,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: color),
          height: Hight,
          width: 38,
        ),
        SizedBox(
          height: 10,
        ),
        Text(day)
      ],
    );
  }
}

class inOutCome extends StatelessWidget {
  const inOutCome(
      {super.key,
      required this.containerColor,
      required this.icone,
      required this.iconeColor,
      required this.name,
      required this.money});
  final containerColor;
  final icone;
  final iconeColor;
  final name;
  final money;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: containerColor,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width / 2.5,
          padding: EdgeInsets.only(top: 50, bottom: 50),
          child: Column(
            children: [
              Icon(
                icone,
                color: iconeColor,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 18, color: Color(0xff446388)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "_________",
                style: TextStyle(color: Color(0xffBBCADD)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                money,
                style: TextStyle(fontSize: 22, color: Color(0xff283B51)),
              )
            ],
          ),
        ));
  }
}

class Num extends StatelessWidget {
  final number;
  const Num({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(number,
          style: TextStyle(color: Color(0xff283B51), fontSize: 25)),
    );
  }
}

class TopWith extends StatelessWidget {
  final buttonColor;
  final buttonText;
  final textColor;
  final icon;
  final iconColor;
  const TopWith(
      {super.key,
      required this.buttonColor,
      required this.buttonText,
      required this.textColor,
      required this.icon,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 2.7,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: buttonColor,
        ),
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              style: TextStyle(color: textColor, fontSize: 16),
            ),
            Icon(
              icon,
              color: iconColor,
            ),
          ],
        ));
  }
}

class activity extends StatelessWidget {
  final appName;
  final appDate;
  final appPrice;
  const activity(
      {super.key,
      required this.appName,
      required this.appDate,
      required this.appPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffF5F7FA),
              ),
              height: 60,
              width: 60,
              child: Icon(
                Icons.image,
                color: Color(0xff292D32),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 20)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  appName,
                  style: TextStyle(
                      color: Color(0xff283B51),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  appDate,
                  style: TextStyle(
                    color: Color(0xff446388),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(appPrice,
                style: TextStyle(
                    color: Color(0xff283B51),
                    fontSize: 16,
                    fontWeight: FontWeight.bold))
          ],
        ));
  }
}

class recentMoney extends StatelessWidget {
  final circleColor;
  final circleName;
  const recentMoney(
      {super.key, required this.circleColor, required this.circleName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(shape: BoxShape.circle, color: circleColor),
          child: Icon(
            Icons.image,
            color: Color(0xff292D32),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(circleName)
      ],
    );
  }
}
