// ignore_for_file: file_names, prefer_const_constructors,prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sharif_project2/components/RecentActivityCard.dart';
import 'package:sharif_project2/components/RecentSendCard.dart';
import 'package:sharif_project2/components/TopCard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text(
          '~ Hi, Sharif!',
          style: TextStyle(
            color: Color(0xff283B51),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 138, 202, 232),
              child: Image.asset(
                "images/avatar-icon.png",
              ),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 255, 255, 0),
      ),
      body: ListView(
        children: [
          TopCard(balance: 154723.00),
          RecentActivityCard(),
          RecentSendCard(),
        ],
      ),
    );
  }
}
