import 'package:flutter/material.dart';

class staticpage extends StatelessWidget {
  const staticpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Bodystatic(),
    );
  }
}

class Bodystatic extends StatelessWidget {
  const Bodystatic({super.key});

@override
Widget build(BuildContext context) {
return ListView(
children: [
Container(
child: Center(
child: Column(
children: [
Container(
padding: EdgeInsets.all(20),
child: Column(
children: [
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Ink(
decoration: const ShapeDecoration(
color: Color.fromARGB(255, 208, 218, 230),
shape: CircleBorder(),
),
child: IconButton(
icon: const Icon(Icons.arrow_back_ios_new),
color: Color.fromARGB(255, 40, 59, 81),
onPressed: (){  Navigator.pop(context);
},
),
),
Text(
'Statistics',
style: TextStyle(
fontSize: 20, color: Color(0xff283B51)),
),
Ink(
decoration: const ShapeDecoration(
color: Color.fromARGB(255, 194, 204, 215),
shape: CircleBorder(),
),
child: IconButton(
icon: const Icon(Icons.more_horiz),
color: Color.fromARGB(255, 40, 59, 81),
onPressed: () {},
),
),
],
),
SizedBox(
height: 20,
),
Container(
height: 350,
padding: EdgeInsets.all(20),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(15),
color: Colors.white),
child: Center(
child: Column(
children: [
Container(
padding: EdgeInsets.all(20),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(15),
color: Color.fromARGB(255, 245, 247, 250)),
child: Row(
mainAxisAlignment:
MainAxisAlignment.spaceBetween,
children: [
Text(
'Your Balance',
style: TextStyle(
  color: Color(0xff446388),
),
),
Text(
'\$154.723.00',
style: TextStyle(
    color: Color.fromARGB(255, 40, 59, 81),
    fontSize: 20),
),
],
),
),
SizedBox(
height: 30,
),
Row(
crossAxisAlignment: CrossAxisAlignment.end,
mainAxisAlignment:
MainAxisAlignment.spaceBetween,
children: [
Container(
height: 135,
width: 33,
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  color: Color.fromARGB(255, 211, 221, 233)),
),
Container(
height: 105,
width: 33,
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  color: Color.fromARGB(255, 211, 221, 233)),
),
Container(
height: 85,
width: 33,
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  color: Color.fromARGB(255, 227, 237, 250)),
),
Container(
height: 170,
width: 33,
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  color: Color.fromARGB(255, 40, 59, 81)),
),
Container(
height: 130,
width: 33,
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  color: Color.fromARGB(255, 211, 221, 233)),
),
],
),
SizedBox(
height: 20,
),
Row(
mainAxisAlignment:
MainAxisAlignment.spaceBetween,
children: [
Text('Mon',
style:
    TextStyle(color: Color.fromARGB(255, 68, 99, 136))),
Text('Tue',
style:
    TextStyle(color: Color.fromARGB(255, 68, 99, 136))),
Text('Wed',
style:
    TextStyle(color: Color.fromARGB(255, 68, 99, 136))),
Text('Thu',
style:
    TextStyle(color: Color.fromARGB(255, 68, 99, 136))),
Text('Fri',
style:
    TextStyle(color: Color.fromARGB(255, 68, 99, 136))),
],
),
],
),
),
),
SizedBox(
height: 15,
),
Center(
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Container(
padding: EdgeInsets.all(25),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
color: Color(0xffDCE8F5)),
height: 170,
width: 130,
child: Center(
child: Column(
children: [
Icon(
Icons.arrow_downward,
color: Color.fromARGB(255, 45, 67, 92),
size: 30.0,
),
Text('Income',
  style: TextStyle(
      color: Color.fromARGB(255, 62, 91, 125),
      fontSize: 15)),
SizedBox(
height: 10,
),
Divider(color: Color.fromARGB(255, 196, 211, 230)),
SizedBox(
height: 10,
),
Text(
'\$25.245',
style: TextStyle(
    color: Color.fromARGB(255, 40, 59, 81),
    fontSize: 20),
),
],
),
),
),
Container(
padding: EdgeInsets.all(25),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
color: Color.fromARGB(255, 220, 232, 245)),
height: 170,
width: 130,
child: Center(
child: Column(
children: [
Icon(
Icons.arrow_downward,
color: Color.fromARGB(255, 35, 51, 70),
size: 30.0,
),
Text('Income',
  style: TextStyle(
      color: Color.fromARGB(255, 68, 99, 136),
      fontSize: 15)),
SizedBox(
height: 10,
),
Divider(color: Color(0xffBBCADD)),
SizedBox(
height: 10,
),
Text(
'\$25.245',
style: TextStyle(
    color: Color(0xff283B51),
    fontSize: 20),
),
],
),
),
),
],
),
),
],
),
),
],
),
),
),
      ],
    );
  }
}
