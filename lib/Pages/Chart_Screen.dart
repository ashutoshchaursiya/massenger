// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../models/Chart_models.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({Key? key}) : super(key: key);

  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => Column(
        children: [
          const Divider(
            height: 10.0,
          ),
          ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                foregroundColor: Theme.of(context).primaryColor,
                backgroundImage: AssetImage(dummyData[i].im),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dummyData[i].name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text(
                    dummyData[i].time,
                    style: const TextStyle(
                        fontStyle: FontStyle.italic, fontSize: 15.0),
                  ),
                ],
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  dummyData[i].Messeage,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
              )),
        ],
      ),
    );
  }
}
