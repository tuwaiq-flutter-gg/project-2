// import 'package:flutter/material.dart';

// class SendPad extends StatelessWidget {
//   final TextEditingController controller;

//   const SendPad({
//     super.key,
//     required this.controller,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Padding(
//           padding: EdgeInsets.symmetric(
//               horizontal: MediaQuery.of(context).size.width / 20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 alignment: Alignment.center,
//                 height: 65,
//                 width: 300,
//                 child: TextField(
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: 'Add note..',
//                   ),
//                 ),
//               ),
//               Icon(
//                 Icons.edit_note,
//                 color: Color(0xff283B51),
//                 size: 40,
//               ),
//             ],
//           ),
//         ),
//         NumPad(
//             buttonSize: 50,
//             iconColor: Color(0xff283B51),
//             controller: controller,
//             delete: () {
//               controller.text =
//                   controller.text.substring(0, controller.text.length - 1);
//             },
//             onSubmit: () {
//               Navigator.pop(context);
//             })
//       ],
//     );
//   }
// }

// class NumPad extends StatelessWidget {
//   final double buttonSize;
//   final Color iconColor;
//   final TextEditingController controller;
//   final Function delete;
//   final Function onSubmit;

//   const NumPad({
//     Key? key,
//     this.buttonSize = 40,
//     this.iconColor = Colors.white,
//     required this.delete,
//     required this.onSubmit,
//     required this.controller,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(35),
//           topRight: Radius.circular(35),
//         ),
//         color: Colors.white,
//       ),
//       child: Column(
//         children: [
//           SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               NumberButton(
//                 number: "1",
//                 size: buttonSize,
//                 controller: controller,
//               ),
//               NumberButton(
//                 number: "2",
//                 size: buttonSize,
//                 controller: controller,
//               ),
//               NumberButton(
//                 number: "3",
//                 size: buttonSize,
//                 controller: controller,
//               ),
//             ],
//           ),
//           const SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               NumberButton(
//                 number: "4",
//                 size: buttonSize,
//                 controller: controller,
//               ),
//               NumberButton(
//                 number: "5",
//                 size: buttonSize,
//                 controller: controller,
//               ),
//               NumberButton(
//                 number: "6",
//                 size: buttonSize,
//                 controller: controller,
//               ),
//             ],
//           ),
//           const SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               NumberButton(
//                 number: "7",
//                 size: buttonSize,
//                 controller: controller,
//               ),
//               NumberButton(
//                 number: "8",
//                 size: buttonSize,
//                 controller: controller,
//               ),
//               NumberButton(
//                 number: "9",
//                 size: buttonSize,
//                 controller: controller,
//               ),
//             ],
//           ),
//           const SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               NumberButton(
//                 number: ",",
//                 size: buttonSize,
//                 controller: controller,
//               ),
//               NumberButton(
//                 number: "   0",
//                 size: buttonSize,
//                 controller: controller,
//               ),
//               IconButton(
//                 onPressed: () => delete(),
//                 icon: Icon(
//                   Icons.backspace,
//                   color: iconColor,
//                 ),
//                 iconSize: buttonSize,
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Center(
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 fixedSize: Size(280, 40),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 backgroundColor: Color.fromARGB(255, 18, 44, 73),
//               ),
//               onPressed: () {
//                 onSubmit();
//               },
//               child: Text("Send"),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class NumberButton extends StatelessWidget {
//   final String number;
//   final double size;
//   final TextEditingController controller;

//   const NumberButton({
//     Key? key,
//     required this.number,
//     required this.size,
//     required this.controller,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(MediaQuery.of(context).size.width / 10),
//           topRight: Radius.circular(MediaQuery.of(context).size.width / 10),
//         ),
//         color: Colors.white,
//       ),
//       width: size,
//       height: size,
//       child: TextButton(
//         onPressed: () {
//           controller.text += number.toString();
//         },
//         child: Center(
//           child: Text(
//             number.toString(),
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Color(0xff283B51),
//               fontSize: 25,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
