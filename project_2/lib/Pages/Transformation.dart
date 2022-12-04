import 'package:flutter/material.dart';
import 'package:project_2/objects/Keybord%20Numbers.dart';

class SendingMoney extends StatefulWidget {
  SendingMoney({
    super.key,
  });
  //TextEditingController? control = TextEditingController();

  @override
  State<SendingMoney> createState() => _SendingMoneyState();
}

class _SendingMoneyState extends State<SendingMoney> {
  TextEditingController? control = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz_rounded,
                color: Color(0xFF283B51),
              )),
        ],
        elevation: 0,
        backgroundColor: Color(0xFFE5E5E5),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
                child: Center(
                    child: Text(
              "Sent to",
              style: TextStyle(color: Color(0xFF446388), fontSize: 14),
            ))),
            Center(
                child: Text("Agus Samsudin",
                    style: TextStyle(color: Color(0xFF283B51), fontSize: 18))),
            SizedBox(
              height: 30,
            ),
            Center(
                child: TextField(
                    controller: control,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff283B51),
                    ),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.none,
                    onTap: () {
                      showModalBottomSheet(
                        backgroundColor: Color(0xffD0DAE6),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                        ),
                        context: context,
                        builder: (context) => (KeybordNumber(
                          control: control!,
                        )),
                      );
                    })),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 29,
                  width: 73,
                  color: Color(0xFFDCE8F5),
                  child: Center(child: Text("USD")),
                ),
              ),
            ),
            SizedBox(
              height: 53,
            ),
            // Center(
            //     child: KeybordNumber(
            //   control: control!,
            // ))
          ],
        ),
      ),
    );
  }
}
