// ignore_for_file: file_names, prefer_const_constructors,prefer_const_literals_to_create_immutables, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:sharif_project2/components/ActivityCard.dart';

class RecentActivityCard extends StatelessWidget {
  const RecentActivityCard({super.key});

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
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () => {},
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
          ActivityCard(
            name: 'Figma',
            date: DateTime(2022, 8, 12),
            price: 20.1,
            logoURL: 'images/figma.png',
          ),
          ActivityCard(
            name: 'Netflix',
            date: DateTime(2022, 8, 7),
            price: 14.1,
            logoURL: 'images/netflix.jpg',
          ),
        ],
      ),
    );
  }
}
