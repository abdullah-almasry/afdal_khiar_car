import 'package:flutter/material.dart';
import 'package:pandabar/pandabar.dart';

String page = 'Homepage';
var Bottom_nav_Bars = PandaBar(
  backgroundColor: Colors.white,
  fabIcon: Icon(Icons.add),
  buttonColor: Colors.grey,
  buttonSelectedColor: Colors.black,
  fabColors: [Colors.yellow, Colors.yellowAccent],
  buttonData: [
    PandaBarButtonData(
      id: 'Homepage',
      icon: Icons.home,
      title: 'Homepage',
    ),
    PandaBarButtonData(
        id: 'Works',
        icon: Icons.work,
        title: 'Works'
    ),
    PandaBarButtonData(
        id: 'Calendar',
        icon: Icons.calendar_today,
        title: 'Calendar'
    ),
    PandaBarButtonData(
        id: 'Profile',
        icon: Icons.person,
        title: 'Profile'
    ),
  ],
  onChange: (id) {
    /*setState(() {
      page = id;
    });*/
  },
  onFabButtonPressed: () {
  },
);