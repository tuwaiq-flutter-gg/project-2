// ignore_for_file: file_names, prefer_const_constructors,prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sharif_project2/components/CustomSheet.dart';

class SendTo extends StatefulWidget {
  final String name;
  const SendTo({super.key, required this.name});

  @override
  State<SendTo> createState() => _SendToState();
}

class _SendToState extends State<SendTo> {
  final TextEditingController _myController = TextEditingController()
    ..text = "\$";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 138, 202, 232),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new),
            color: Colors.black,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 138, 202, 232),
            ),
            child: IconButton(
              color: Colors.black,
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 255, 255, 0),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const Text(
                'Send To',
                style: TextStyle(
                  color: Color(0xff446388),
                ),
              ),
              Text(
                widget.name,
                style: TextStyle(
                  color: Color(0xff283B51),
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  inputFormatters: [],
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    isDense: true,
                  ),
                  onTap: () {
                    showModalBottomSheet(
                      barrierColor: Colors.white.withOpacity(0.1),
                      isScrollControlled: true,
                      backgroundColor: Color.fromARGB(255, 138, 202, 232),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32.0),
                          topRight: Radius.circular(32.0),
                        ),
                      ),
                      context: context,
                      builder: (context) => CustomSheet(
                        controller: _myController,
                      ),
                    );
                  },
                  controller: _myController,
                  textAlign: TextAlign.center,
                  showCursor: false,
                  style: const TextStyle(
                    fontSize: 40,
                    color: Color(0xff283B51),
                  ),
                  keyboardType: TextInputType.none,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width / 28),
                  color: Color.fromARGB(255, 138, 202, 232),
                ),
                child: Text("USD"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
