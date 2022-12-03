import 'package:flutter/material.dart';
import 'package:salem_project2/components/activitylist.dart';
import 'package:salem_project2/pages/stats.dart';

class RecentAc extends StatelessWidget {
  const RecentAc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 10, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Activity',
                style: TextStyle(
                  color: Color(0xff283B51),
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const Stats(balance: '\$154.723.00')),
                  )
                },
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: Color(0xff283B51),
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          ActivityList(
            name: 'Figma',
            date: "12 August 2022",
            price: "\$20.1",
            picture: 'images/figma.png',
          ),
          ActivityList(
            name: 'Netflix',
            date: "07 August 2022",
            price: "\$14.1",
            picture: 'images/netflix.png',
          ),
        ],
      ),
    );
  }
}
