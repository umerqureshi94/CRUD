import 'package:flutter/material.dart';

import 'package:project/screens/android-1.dart';
import 'package:project/screens/android-3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Contact_Page_1(),
    );
  }
}
