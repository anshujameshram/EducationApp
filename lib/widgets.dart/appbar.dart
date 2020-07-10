import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  final String subtitle;

  MyAppBar({this.title,this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Center(
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'VarelaRound',
            fontSize: 15,
          ),
        ),
      ),
      subtitle: Center(
        child: Text(
          subtitle,
          style: TextStyle(
            fontFamily: 'VarelaRound',
            fontSize: 12,
          ),
        ),
      ),
      trailing: Icon(Icons.menu, color: Colors.blue),
    );
  }
}
