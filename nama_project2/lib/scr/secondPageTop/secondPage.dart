import 'package:flutter/material.dart';
import 'package:nama_project2/scr/components/keyboard.dart';
import 'package:nama_project2/scr/secondPageTop/secondPageTop.dart';
import 'package:nama_project2/scr/secondPageTop/sendPageCalc.dart';

class secondPageUp extends StatefulWidget {
  secondPageUp({super.key, required this.controlor});
  final TextEditingController controlor;

  @override
  State<secondPageUp> createState() => _secondPageUpState();
}

class _secondPageUpState extends State<secondPageUp> {
  //var buttonSize = 79;
  //dynamic size =22.5;
  TextEditingController controlor = TextEditingController();
  String number = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Color.fromARGB(255, 23, 57, 85),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // secondPageTop(
              //   scnTopImage: Icon(Icons.arrow_back_ios_new_rounded),
              // ),
              secondPageTop(
                scnTopImage: Icon(Icons.more_horiz_rounded),
              )
            ],
          ),
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,

                  padding: EdgeInsets.all(25),
                  //decoration: BoxDecoration(shape: BorderRadius(Radius)).,
                  color: Color(0xffffffFf),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Send to",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Agus Samsudin",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        child: const Text(
                          //controlor= mycontrolor,        //
                          "\$950.00",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 55,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              //var buttonSize = 20.0;
                              //  print(".......999..");
                              print(controlor);
                              return Wrap(spacing: 25.5,
                                  //alignment: WrapAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 500,
                                      width: MediaQuery.of(context).size.width,
                                      color: Colors.white,
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        // crossAxisAlignment: CrossAxisAlignment.stretch,

                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              MyKeyBoard(
                                                number: "1",
                                                controlor: controlor,
                                              ),
                                              MyKeyBoard(
                                                number: "2",
                                                controlor: controlor,
                                              ),
                                              MyKeyBoard(
                                                number: "3",
                                                controlor: controlor,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              MyKeyBoard(
                                                number: "4",
                                                controlor: controlor,
                                              ),
                                              MyKeyBoard(
                                                  number: "5",
                                                  controlor: controlor),
                                              MyKeyBoard(
                                                  number: "6",
                                                  controlor: controlor),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              MyKeyBoard(
                                                  number: "7",
                                                  controlor: controlor),
                                              MyKeyBoard(
                                                  number: "8",
                                                  controlor: controlor),
                                              MyKeyBoard(
                                                  number: "9",
                                                  controlor: controlor),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              MyKeyBoard(
                                                  number: ".",
                                                  controlor: controlor),
                                              MyKeyBoard(
                                                  number: "0",
                                                  controlor: controlor),
                                              MyKeyBoard(
                                                  number: "x",
                                                  controlor: controlor),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Center(
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                fixedSize: Size(280, 40),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                backgroundColor: Color.fromARGB(
                                                    255, 18, 44, 73),
                                              ),
                                              onPressed: () {
                                                // onSubmit();
                                              },
                                              child: InkWell(
                                                child: Text("Send"),
                                                onTap: () {
                                                  Navigator.pop(context, true);
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]);
                            },
                          );

                          //  MyKeyBoard(number: "1", controler:);
                          //  MyKeyBoard(number: "2",);
                        },
                        // onFocusChange: (value) => secndCalc(),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 22,
                        width: MediaQuery.of(context).size.width / 6,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 197, 215, 228),
                            borderRadius: BorderRadius.circular(77)),
                        child: Center(child: Text("USD.")),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 70,
                            width: 280,
                            
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: ' Note...',
                              ),
                            ),
                          ),
                          Icon(
                            Icons.draw_rounded,
                            color: Color.fromARGB(255, 44, 76, 112),
                            size: 35,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              ClipRRect(
                child: Container(
                  height: MediaQuery.of(context).size.height / 15,
                  margin: EdgeInsets.all(15),
                  color: Colors.white,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [],
                  ),

                  //
                ),
              ),
              //      delete(){
              //   controlor.text=
              // }
            ],
          ),
        ));
  }
}
