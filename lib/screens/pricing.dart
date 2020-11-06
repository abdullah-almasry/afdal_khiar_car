import 'package:afdal_khiar_car/widget/button_nav_bar.dart';
import 'package:afdal_khiar_car/widget/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'payment/Delivery.dart';

class Pricing extends StatefulWidget {
  @override
  _PricingState createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
  bool _isChecked = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;
  bool _isChecked5 = false;
  bool _isChecked6 = false;
  bool _isChecked7 = false;
  bool _isChecked8 = false;
  bool _isChecked9 = false;
  bool _isChecked10 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        backgroundColor: KBackGroundColor,
      /*  appBar: AppBar(
          backgroundColor: KBackGroundColor,
          elevation: 0,
        ),*/
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                // color: Colors.red,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.72,
                child: Card(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          height: 20,
                          child: Row(
                            children: [
                              Text('service'),
                              Spacer(),
                              Text(
                                'price',
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Checkbox(
                          activeColor: Colors.yellow,
                          checkColor: Colors.black,
                          value: _isChecked,
                          onChanged: (newValue) {
                            setState(() {
                              _isChecked = newValue;
                            });
                          },
                        ),
                        title: Text('Regular Wash'),
                        trailing: Text('15 AEd'),
                      ),
                      ListTile(
                        leading: Checkbox(
                          activeColor: Colors.yellow,
                          checkColor: Colors.black,
                          value: _isChecked2,
                          onChanged: (newValue) {
                            setState(() {
                              _isChecked2 = newValue;
                            });
                          },
                        ),
                        title: Text(' Tire Polishing'),
                        trailing: Text('20 AEd'),
                      ),
                      ListTile(
                        leading: Checkbox(
                          activeColor: Colors.yellow,
                          checkColor: Colors.black,
                          value: _isChecked3,
                          onChanged: (newValue) {
                            setState(() {
                              _isChecked3 = newValue;
                            });
                          },
                        ),
                        title: Text(' Vacuum Cleaning'),
                        trailing: Text('15 AEd'),
                      ),
                      ListTile(
                        leading: Checkbox(
                          activeColor: Colors.yellow,
                          checkColor: Colors.black,
                          value: _isChecked4,
                          onChanged: (newValue) {
                            setState(() {
                              _isChecked4 = newValue;
                            });
                          },
                        ),
                        title: Text('Dashboard Polishing'),
                        trailing: Text('23 AEd'),
                      ),
                      ListTile(
                        leading: Checkbox(
                          activeColor: Colors.yellow,
                          checkColor: Colors.black,
                          value: _isChecked5,
                          onChanged: (newValue) {
                            setState(() {
                              _isChecked5 = newValue;
                            });
                          },
                        ),
                        title: Text('Wheel Polishing'),
                        trailing: Text('15 AEd'),
                      ),
                      ListTile(
                        leading: Checkbox(
                          activeColor: Colors.yellow,
                          checkColor: Colors.black,
                          value: _isChecked6,
                          onChanged: (newValue) {
                            setState(() {
                              _isChecked6 = newValue;
                            });
                          },
                        ),
                        title: Text('A/C Vent Steam Cleaning'),
                        trailing: Text('18 AEd'),
                      ),
                      ListTile(
                        leading: Checkbox(
                          activeColor: Colors.yellow,
                          checkColor: Colors.black,
                          value: _isChecked7,
                          onChanged: (newValue) {
                            setState(() {
                              _isChecked7 = newValue;
                            });
                          },
                        ),
                        title: Text('Spray Air Freshener'),
                        trailing: Text('15 AEd'),
                      ),
                      ListTile(
                        leading: Checkbox(
                          activeColor: Colors.yellow,
                          checkColor: Colors.black,
                          value: _isChecked8,
                          onChanged: (newValue) {
                            setState(() {
                              _isChecked8 = newValue;
                            });
                          },
                        ),
                        title: Text('Steam Seat Stain Removal'),
                        trailing: Text('69 AEd'),
                      ),
                      ListTile(
                        leading: Checkbox(
                          activeColor: Colors.yellow,
                          checkColor: Colors.black,
                          value: _isChecked9,
                          onChanged: (newValue) {
                            setState(() {
                              _isChecked9 = newValue;
                            });
                          },
                        ),
                        title: Text('Full Car Polishing'),
                        trailing: Text('15 AEd'),
                      ),
                      ListTile(
                        leading: Checkbox(
                          activeColor: Colors.yellow,
                          checkColor: Colors.black,
                          value: _isChecked10,
                          onChanged: (newValue) {
                            setState(() {
                              _isChecked10 = newValue;
                            });
                          },
                        ),
                        title: Text('Air Freshener (Dukhoon) '),
                        trailing: Text('27 AEd'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){Get.to(Delivery());},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  child: Center(child: Text('booking'),),
                  height:60,
                  decoration: BoxDecoration(
                      color:  Color(0xFFFAF205),
                      borderRadius: BorderRadius.all(Radius.circular(15))

                  ),
                ),
              ),
            ),
            Spacer(),
            Bottom_nav_Bars,
          ],
        ),
      ),
    );
  }
}
