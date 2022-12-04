// ignore_for_file: file_names, prefer_const_constructors,prefer_const_literals_to_create_immutables, library_private_types_in_public_api, must_be_immutable
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sharif_project2/src/SendTo.dart';

class ActivityCard extends StatelessWidget {
  final String name;
  final DateTime date;
  final double price;
  final String logoURL;
  final priceFormat = NumberFormat("\$#,##0.0");
  final dateFormat = DateFormat('dd MMMM yyyy');

  ActivityCard({
    super.key,
    required this.name,
    required this.date,
    required this.price,
    required this.logoURL,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SendTo(name: name),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        width: MediaQuery.of(context).size.width,
        height: (MediaQuery.of(context).size.width / 2) / 2.5,
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(MediaQuery.of(context).size.width / 28),
          color: Color.fromARGB(255, 138, 202, 232),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width / 28),
                  child: Image.asset(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 6,
                    fit: BoxFit.fill,
                    logoURL,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Color(0xff283B51),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    dateFormat.format(date),
                    style: TextStyle(
                      color: Color(0xff446388),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    priceFormat.format(price),
                    style: TextStyle(
                      color: Color(0xff283B51),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
