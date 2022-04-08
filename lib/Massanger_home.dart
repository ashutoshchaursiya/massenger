// ignore_for_file: avoid_print, file_names, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

import 'Pages/Calls_Screen.dart';
import 'Pages/Camera_Screen.dart';
import 'Pages/Chart_Screen.dart';
import 'Pages/Status_screen.dart';

class MassangerHome extends StatefulWidget {
  const MassangerHome({Key? key}) : super(key: key);

  @override
  State<MassangerHome> createState() => _MassangerHomeState();
}

class _MassangerHomeState extends State<MassangerHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0075E54),
        title: const Text("Massanger"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHARTS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
        ),
        actions: const <Widget>[
          Icon(Icons.search),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          CameraScreen(),
          ChartScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("Open Charts"),
      ),
    );
  }
}
