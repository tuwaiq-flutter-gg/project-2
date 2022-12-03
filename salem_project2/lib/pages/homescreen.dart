import 'package:flutter/material.dart';
import 'package:salem_project2/components/mainacc.dart';
import 'package:salem_project2/components/recentac.dart';
import 'package:salem_project2/components/recentsend.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        appBar: AppBar(
          title: const Text(
            '~ Hi, Salem!',
            style: TextStyle(
              color: Color(0xff283B51),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 19),
              child: CircleAvatar(
                backgroundColor: Color(0xD0DAE6),
                child: Image.asset(
                  "images/profilepic.png",
                ),
              ),
            ),
          ],
          elevation: 0,
          backgroundColor: Color(0xffE5E5E5),
        ),
        body: ListView(
          children: [
            MainAcc(
              balance: '\$154.723.00',
            ),
            RecentAc(),
            RecentSend()
          ],
        ));
  }
}
