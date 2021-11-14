import 'package:flutter/material.dart';
import '../utils/utils.dart';

class SpecificsCard extends StatelessWidget {
  final String name0;
  final String name;
  final String name2;

  SpecificsCard({this.name0, this.name, this.name2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: name0 == null ? 80 : 100,
      width: 100,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: name0 == null
          ? Column(
              children: [
                Text(
                  name,
                  style: BasicHeading,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  name2,
                  style: SubHeading,
                ),
              ],
            )
          : Column(
              children: [
                Text(
                  name,
                  style: BasicHeading,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  name0.toString(),
                  style: SubHeading,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(name2)
              ],
            ),
    );
  }
}
