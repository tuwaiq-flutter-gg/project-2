// ignore_for_file: file_names, prefer_const_constructors,prefer_const_literals_to_create_immutables, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:sharif_project2/components/SentElement.dart';

class RecentSendCard extends StatelessWidget {
  const RecentSendCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Send Money',
            style: TextStyle(
              color: Color(0xff283B51),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(MediaQuery.of(context).size.width / 28),
              color: Color.fromARGB(255, 138, 202, 232),
            ),
            alignment: Alignment.centerLeft,
            child: Wrap(
              runSpacing: 10,
              spacing: 10,
              children: [
                SentElement(name: 'Agus'),
                SentElement(name: 'Siti'),
                SentElement(name: 'Udin'),
                SentElement(name: 'Tina'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
