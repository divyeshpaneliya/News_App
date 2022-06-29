import 'package:flutter/material.dart';

import 'Screen/home_screen/view.dart';
import 'Screen/screens/s1/s1.dart';
import 'Screen/screens/s1/s1_2.dart';
import 'Screen/screens/s2/main.dart';
import 'Screen/screens/s2/s2_2.dart';
import 'Screen/screens/s3/s3_2.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => home(),
        's2_2': (context) => s2_2(),
        's1_2': (context) => s1_2(),
        's3_2': (context) => s3_2(),
        's2': (context) => s2(),
        's1': (context) => s1(),
      },
    ),
  );
}
