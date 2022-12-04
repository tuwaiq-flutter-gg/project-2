import 'package:faisal_project2/Compunets/Spaces.dart';
import 'package:faisal_project2/Compunets/Statics/fullstat.dart';
import 'package:faisal_project2/Compunets/Statics/shortstat.dart';
import 'package:faisal_project2/Compunets/Statics/stats.dart';
import 'package:faisal_project2/main.dart';

import 'package:flutter/material.dart';

class homestatics extends StatelessWidget {
  const homestatics({super.key});

  @override
  Widget build(BuildContext context) {
    return (ListView(
      children: [
        spaces(size: 25),
        fulstat(),
        shortstat(),
      ],
    ));
  }
}
