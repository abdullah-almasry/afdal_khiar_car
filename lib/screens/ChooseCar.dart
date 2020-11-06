import 'package:afdal_khiar_car/widget/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandabar/pandabar.dart';

import 'Choosepakig.dart';
import '../widget/button_nav_bar.dart';
import 'pricing.dart';

class ChooseCar extends StatefulWidget {
  @override
  _ChooseCarState createState() => _ChooseCarState();
}

class _ChooseCarState extends State<ChooseCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackGroundColor,
      appBar: AppBar(
        backgroundColor: KBackGroundColor,
        title: Text(
          'Choose a car',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text('Suggested Rides'),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChoosePakig(
                                      img: 'assets/img/car1.png',
                                    )));
                      },
                      child: Card(
                        color: Color(0xFFF7F8FA),
                        elevation: 0.5,
                        child: ListTile(
                          title: Text('H bag'),
                          subtitle: Text(
                            'Shared rides with others going your way',
                            style: TextStyle(fontSize: 9),
                          ),
                          leading: Image.asset(
                            'assets/img/car1.png',
                            width: 80,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Color(0xFFF7F8FA),
                      elevation: 0.5,
                      child: ListTile(
                        onTap: () {
                          Get.to(ChoosePakig(
                            img: 'assets/img/car2.png',
                          ));
                        },
                        title: Text('Sedan'),
                        subtitle: Text(
                          'Affordable rides, all to yourself',
                          style: TextStyle(fontSize: 9),
                        ),
                        leading: Image.asset(
                          'assets/img/car2.png',
                          width: 80,
                        ),
                      ),
                    ),
                    Card(
                      color: Color(0xFFF7F8FA),
                      elevation: 0.5,
                      child: ListTile(
                        onTap: () {
                          Get.to(ChoosePakig(
                            img: 'assets/img/car3.png',
                          ));
                        },
                        title: Text('forweel'),
                        subtitle: Text(
                          'Newer cars with extra legroom',
                          style: TextStyle(fontSize: 9),
                        ),
                        leading: Image.asset(
                          'assets/img/car3.png',
                          width: 80,
                        ),
                      ),
                    ),
                    Card(
                      color: Color(0xFFF7F8FA),
                      elevation: 0.5,
                      child: ListTile(
                        onTap: () {
                          Get.to(ChoosePakig(
                            img: 'assets/img/car4.png',
                          ));
                        },
                        title: Text('Pickup'),
                        subtitle: Text(
                          'Luxury rides with professional drivers',
                          style: TextStyle(fontSize: 9),
                        ),
                        leading: Image.asset(
                          'assets/img/car4.png',
                          width: 80,
                        ),
                      ),
                    ),
                    Card(
                      color: Color(0xFFF7F8FA),
                      elevation: 0.5,
                      child: ListTile(
                        onTap: () {
                          Get.to(ChoosePakig(
                            img: 'assets/img/car5.png',
                          ));
                        },
                        title: Text('van'),
                        subtitle: Text(
                          'Luxury rides for 6 with professional drivers',
                          style: TextStyle(fontSize: 9),
                        ),
                        leading: Image.asset(
                          'assets/img/car5.png',
                          width: 80,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.70,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
          ),
          Spacer(),
          Bottom_nav_Bars,
        ],
      ),
    );
  }
}
//////////////////////////
class ChooseCarPrice extends StatefulWidget {
  @override
  _ChooseCarPriceState createState() => _ChooseCarPriceState();
}

class _ChooseCarPriceState extends State<ChooseCarPrice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackGroundColor,
      appBar: AppBar(
        backgroundColor: KBackGroundColor,
        title: Text(
          'Choose a car',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  scrollDirection: Axis.vertical,
         /*         crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,*/
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text('Suggested Rides'),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pricing(
                                  //img: 'assets/img/car1.png',
                                )));
                      },
                      child: Card(
                        color: Color(0xFFF7F8FA),
                        elevation: 0.5,
                        child: ListTile(
                          title: Text('H bag'),
                          subtitle: Text(
                            'Shared rides with others going your way',
                            style: TextStyle(fontSize: 9),
                          ),
                          leading: Image.asset(
                            'assets/img/car1.png',
                            width: 80,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Color(0xFFF7F8FA),
                      elevation: 0.5,
                      child: ListTile(
                        onTap: () {
                          Get.to(ChoosePakig(
                            img: 'assets/img/car2.png',
                          ));
                        },
                        title: Text('Sedan'),
                        subtitle: Text(
                          'Affordable rides, all to yourself',
                          style: TextStyle(fontSize: 9),
                        ),
                        leading: Image.asset(
                          'assets/img/car2.png',
                          width: 80,
                        ),
                      ),
                    ),
                    Card(
                      color: Color(0xFFF7F8FA),
                      elevation: 0.5,
                      child: ListTile(
                        onTap: () {
                          Get.to(ChoosePakig(
                            img: 'assets/img/car3.png',
                          ));
                        },
                        title: Text('forweel'),
                        subtitle: Text(
                          'Newer cars with extra legroom',
                          style: TextStyle(fontSize: 9),
                        ),
                        leading: Image.asset(
                          'assets/img/car3.png',
                          width: 80,
                        ),
                      ),
                    ),
                    Card(
                      color: Color(0xFFF7F8FA),
                      elevation: 0.5,
                      child: ListTile(
                        onTap: () {
                          Get.to(ChoosePakig(
                            img: 'assets/img/car4.png',
                          ));
                        },
                        title: Text('Pickup'),
                        subtitle: Text(
                          'Luxury rides with professional drivers',
                          style: TextStyle(fontSize: 9),
                        ),
                        leading: Image.asset(
                          'assets/img/car4.png',
                          width: 80,
                        ),
                      ),
                    ),
                    Card(
                      color: Color(0xFFF7F8FA),
                      elevation: 0.5,
                      child: ListTile(
                        onTap: () {
                          Get.to(ChoosePakig(
                            img: 'assets/img/car5.png',
                          ));
                        },
                        title: Text('van'),
                        subtitle: Text(
                          'Luxury rides for 6 with professional drivers',
                          style: TextStyle(fontSize: 9),
                        ),
                        leading: Image.asset(
                          'assets/img/car5.png',
                          width: 80,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
          ),
          Spacer(),
          Bottom_nav_Bars,
        ],
      ),
    );
  }
}