import 'package:flutter/material.dart';
import 'package:pandabar/pandabar.dart';

import 'screens/ChooseCar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String page = 'Homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,

      bottomNavigationBar: PandaBar(
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
          setState(() {
            page = id;
          });
        },
        onFabButtonPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseCarPrice()));
        },
      ),
      body: Builder(
        builder: (context) {

          switch (page) {
            case 'Homepage':
              return ChooseCar();
            case 'Works':
              return Container(color: Colors.blue.shade900);
            case 'Calendar':
              return Container(color: Colors.red.shade900);
            case 'Profile':
              return Container(color: Colors.yellow.shade700);
            default:
              return Container();

          }

        },
      ),
    );
  }
}



