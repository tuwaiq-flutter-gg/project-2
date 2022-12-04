import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project02/homescreen/down.dart';
import 'package:project02/sendmony/sendmony.dart';

class body extends StatelessWidget {
const body({super.key});

@override
Widget build(BuildContext context) {
return Container(
padding: EdgeInsets.symmetric(horizontal: 28),
color: Color.fromARGB(255, 238, 242, 249),
child: ListView(
children: [
Column(
children: [
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text(
'~Hi, Norlanda!',
style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 36, 55, 75)),
),
Container(
decoration: const ShapeDecoration(
color: Color.fromARGB(255, 220, 231, 253),
shape: CircleBorder(),
),
child: IconButton(
icon: const Icon(Icons.image),
iconSize: 20,
color: Color.fromARGB(255, 38, 57, 79),
onPressed: () {},
),
),
],
),
SizedBox(
height: 20,
),
Container(
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(24),
color: Color(0xffDCE8F5),
),
height: 200,
width: MediaQuery.of(context).size.width,
padding: EdgeInsets.only(top: 33),
child: Center(
child: Column(
children: [
Text(
'Main account',
style:
TextStyle(fontSize: 15, color: Color(0xff446388)),
),
Text(
"\$154.723.00",
style:
TextStyle(fontSize: 30, color: Color(0xff283B51)),
),
// SizedBox(
//   height: 35,
// ),

Padding(
padding: const EdgeInsets.all(20),
child: Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Container(
height: 55,
width: 110,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(14),
color: Color(0xff283B51)),
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(
'Topup',
style: TextStyle(
fontSize: 12, color: Colors.white),
),
Icon(
Icons.arrow_circle_down,
color: Color.fromARGB(255, 255, 255, 255),
size: 20.0,
),
],
),
),
InkWell(
child: Container(
height: 55,
width: 110,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(14),
color: Color.fromARGB(255, 250, 251, 252)),
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(
'Withdraw',
style: TextStyle(
fontSize: 12,
color: Color.fromARGB(255, 31, 46, 63),
),
),
Icon(
Icons.outbound,
color: Color.fromARGB(255, 50, 74, 101),
size: 20.0,
),
],
),
),
onTap: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) =>
sendmony(),
),
);
},
),
],
),
),
],
),
),
),
SizedBox(
height: 20,
),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text(
'Recent Activity',
style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 46, 68, 93)),
),
Text(
' See All',
style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 75, 109, 151)),
),
],
),
SizedBox(
height: 10,
),
Container(
height: 65,
width: MediaQuery.of(context).size.width,
padding: EdgeInsets.all(10),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(14),
color: Color.fromARGB(255, 255, 255, 255)),
child: Row(children: [
Container(
height: MediaQuery.of(context).size.height,
width: 50,
decoration: BoxDecoration(
color: Color.fromARGB(255, 220, 232, 245),
borderRadius: BorderRadius.circular(10)),
child: IconButton(
icon: const Icon(Icons.image),
iconSize: 20,
color: Color(0xff283B51),
onPressed: () {},
),
),
SizedBox(
width: 15,
),
Column(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'Figma',
style: TextStyle(
fontSize: 15,
fontWeight: FontWeight.bold,
color: Color(0xff283B51)),
),
Text(
'12 August 2022',
style: TextStyle(
fontSize: 13,
fontWeight: FontWeight.bold,
color: Color.fromARGB(255, 175, 196, 223)),
),
],
),
SizedBox(
width: 130,
),
Text(
"\$20.1",
style: TextStyle(
fontWeight: FontWeight.bold, color: Color.fromARGB(255, 31, 46, 63)),
),
]),
),
SizedBox(
height: 10,
),
Container(
height: 65,
width: MediaQuery.of(context).size.width,
padding: EdgeInsets.all(10),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(14),
color: Color.fromARGB(255, 255, 255, 255)),
child: Row(children: [
Container(
height: MediaQuery.of(context).size.height,
width: 50,
decoration: BoxDecoration(
color: Color(0xffDCE8F5),
borderRadius: BorderRadius.circular(10)),
child: IconButton(
icon: const Icon(Icons.image),
iconSize: 20,
color: Color.fromARGB(255, 40, 59, 81),
onPressed: () {},
),
),
SizedBox(
width: 15,
),
Column(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'Netflix',
style: TextStyle(
fontSize: 15,
fontWeight: FontWeight.bold,
color: Color.fromARGB(255, 40, 59, 81)),
),
Text(
'07 August 2022',
style: TextStyle(
fontSize: 13,
fontWeight: FontWeight.bold,
color: Color.fromARGB(255, 158, 180, 207)),
),
],
),
SizedBox(
width: 130,
),
Text(
"\$14.1",
style: TextStyle(
fontWeight: FontWeight.bold, color: Color.fromARGB(255, 38, 58, 81)),
),
]),
),
SizedBox(
height: 20,
),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text(
'Recent Send Money',
style: TextStyle(fontSize: 17, color: Color.fromARGB(255, 33, 49, 68)),
),
],
),
SizedBox(
height: 10,
),
down(),
],
)
],
),
);
}
}
