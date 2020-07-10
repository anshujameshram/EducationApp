import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class UnitList extends StatelessWidget {
  

  final String title;
  final int cards;
  final int unitNo;
  final String subtitle;
  final double percent;

  UnitList({this.title, this.cards, this.unitNo, this.subtitle, this.percent});

  @override
  Widget build(BuildContext context) {
    Color c=percent>=50?Colors.blue:Colors.red;
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Unit $unitNo -',
                  style: TextStyle(
                      fontFamily: 'VarelaRound',
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontFamily: 'VarelaRound',
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Icon(Icons.insert_drive_file,
                      color: Colors.blue.shade200),
                  label: Text('$cards cards',
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar:
                      Icon(Icons.bookmark_border, color: Colors.blue.shade200),
                  label: Text(subtitle,
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: LinearPercentIndicator(
                    percent: percent * 0.01,
                    progressColor: c,
                    leading: Text('${percent.toInt()} %',
                        style: TextStyle(
                          fontSize: 12,
                          color: c,
                        )),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
