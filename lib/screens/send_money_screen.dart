import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        title: CircleAvatar(
          backgroundColor: Colors.blue[200],
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.blue[200],
              child: Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.grey[100],
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              Text(
                "Send to",
                style: TextStyle(
                    // fontWeight: FontWeight.normal,
                    fontSize: 17,
                    color: Color.fromARGB(255, 3, 19, 32)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Agus Samsudin",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "\$213.55",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsetsDirectional.only(
                    start: 25, end: 25, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadiusDirectional.circular(20),
                ),
                child: Text(
                  "USD",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    padding: EdgeInsetsDirectional.only(
                        start: 25, end: 25, top: 10, bottom: 100),
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadiusDirectional.circular(40),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(FontAwesomeIcons.penClip),
                          hintText: "Add note.."),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Container(
                        height: 400,
                        padding: EdgeInsetsDirectional.only(
                            start: 25, end: 25, top: 10, bottom: 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.circular(40),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              child: NumericKeyboard(
                                  onKeyboardTap: (text) {},
                                  textColor: Color.fromARGB(255, 3, 19, 32),
                                  rightButtonFn: () {},
                                  rightIcon: Icon(
                                    Icons.backspace,
                                    color: Color.fromARGB(255, 3, 19, 32),
                                  ),
                                  leftButtonFn: () {
                                    print('left button clicked');
                                  },
                                  leftIcon: Icon(
                                    Icons.check,
                                    color: Color.fromARGB(255, 3, 19, 32),
                                  ),
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly),
                            ),
                            Positioned(
                              top: 270,
                              left: 0,
                              right: 0,
                              child: Container(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Container(
                                    padding: EdgeInsetsDirectional.only(
                                        start: 25,
                                        end: 25,
                                        top: 10,
                                        bottom: 10),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 3, 19, 32),
                                      borderRadius:
                                          BorderRadiusDirectional.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          'Send',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.send,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // _bottomSheet(context),
            ],
          ),
        ),
      ),
    );
  }

  void _bottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return new Container(
            height: 350.0,
            color: Colors.transparent,
            child: new Container(
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0))),
                child: new Center(
                  child: new Text("This is a modal sheet"),
                )),
          );
        });
  }
}
