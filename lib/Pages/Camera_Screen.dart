// ignore_for_file: unnecessary_const, file_names

import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: const Text(
      "Camera",
      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    ));
  }
}
