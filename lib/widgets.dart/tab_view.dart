import 'package:flutter/material.dart';

class TabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      //labelColor: Colors.black87,
      //unselectedLabelColor: Colors.grey,
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      indicatorSize: TabBarIndicatorSize.label,
      tabs: <Widget>[
        Tab(
          child: Text(
            'Activity',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontFamily: 'VarelaRound',
            ),
          ),
        ),
        Tab(
          child: Text(
            'Learning Plan',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontFamily: 'VarelaRound',
            ),
          ),
        ),
        Tab(
          child: Text(
            'Progress',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontFamily: 'VarelaRound',
            ),
          ),
        ),
      ],
    );
  }
}
