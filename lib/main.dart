// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'Massanger_home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Massanger",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.green, accentColor: const Color(0xff25D366)),
      home: const MassangerHome(),
    );
  }
}
