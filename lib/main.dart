import 'package:edu_app/widgets.dart/list_unit.dart';
import 'package:flutter/material.dart';

import 'widgets.dart/appbar.dart';
import 'widgets.dart/book_box.dart';
import 'widgets.dart/tab_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 145,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 4,
                      color: Colors.grey.shade400,
                      offset: Offset(0, 2)),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SafeArea(
                    child: MyAppBar(
                      title: 'Christaline Collier',
                      subtitle: 'Business English',
                    ),
                  ),
                  TabView(),
                ],
              ),
            ),
            BookBox(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Latest Results',
                      style: TextStyle(
                        fontFamily: 'VarelaRound',
                        fontWeight: FontWeight.bold,
                      )),
                  Row(
                    children: <Widget>[
                      Text(
                        'Lowest',
                        style: TextStyle(
                          fontFamily: 'VarelaRound',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  UnitList(
                    title: 'Running business in Sweden',
                    cards: 34,
                    unitNo: 5,
                    subtitle: 'Business',
                    percent: 15.0,
                  ),
                  UnitList(
                    title: 'Job Interview',
                    cards: 48,
                    unitNo: 3,
                    subtitle: 'Career',
                    percent: 25.0,
                  ),
                  UnitList(
                    title: 'Financial Market',
                    cards: 26,
                    unitNo: 8,
                    subtitle: 'Finance',
                    percent: 75.0,
                  ),
                  UnitList(
                    title: 'Sales',
                    cards: 56,
                    unitNo: 9,
                    subtitle: 'Sale',
                    percent: 80.0,
                  ),
                  UnitList(
                    title: 'Business improvement',
                    cards: 76,
                    unitNo: 6,
                    subtitle: 'Business',
                    percent: 34.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
