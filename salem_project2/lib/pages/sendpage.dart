import 'package:flutter/material.dart';
import 'package:salem_project2/components/sendtokeypad.dart';

class SendPage extends StatefulWidget {
  SendPage({
    super.key,
  });
  final TextEditingController controllers = TextEditingController();
  @override
  State<SendPage> createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  final TextEditingController _myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 19),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 167, 174, 177),
            ),
            child: IconButton(
              color: Colors.black,
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Color(0xffE5E5E5),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Text("Send to",
                  style: TextStyle(color: Color.fromARGB(255, 42, 68, 100))),
              Text("Agus Samsudin",
                  style: TextStyle(
                      color: Color.fromARGB(255, 32, 64, 104),
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "\$0.00",
                  ),
                  onTap: () {
                    showModalBottomSheet(
                      backgroundColor: Color.fromARGB(255, 205, 217, 221),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      context: context,
                      builder: (context) => SendPad(
                        controller: _myController,
                      ),
                    );
                  },
                  controller: _myController,
                  showCursor: false,
                  keyboardType: TextInputType.none,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 190, 197, 206),
                  ),
                  child: Text("USD"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
