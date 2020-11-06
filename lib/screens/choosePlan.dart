
import 'package:afdal_khiar_car/screens/sign_up.dart';
import 'package:afdal_khiar_car/widget/button_nav_bar.dart';
import 'package:afdal_khiar_car/widget/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'payment/Delivery.dart';
class ChoosePlanNormal extends StatelessWidget {
  final String img;

  const ChoosePlanNormal({Key key, this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: KBackGroundColor,
        centerTitle: true,
        elevation: 0,
        title: Text('Choose a car',style: TextStyle(color: Colors.white),),
      ),
      backgroundColor: KBackGroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
             // height: double.infinity,
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.60,
              child: Card(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('NORMAL PACKAGE',style: TextStyle(color: Color(0Xff181F4D),fontSize: 16,fontWeight: FontWeight.w500),),
                    ),
                    Divider(),
                    Image.asset(img,width: size.width*0.60,height: 100,fit: BoxFit.cover,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Normal wash'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Tire Polishing'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Vacuum Cleaning'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Dashboard Polishing'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Spray Air Freshener'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){Get.to(Delivery());},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
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

    );
  }
}
class ChoosePlanGolden extends StatelessWidget {
  final String img;

  const ChoosePlanGolden({Key key, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: KBackGroundColor,
        centerTitle: true,
        elevation: 0,
        title: Text('Choose a car',style: TextStyle(color: Colors.white),),
      ),
      backgroundColor: KBackGroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // height: double.infinity,
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.60,
              child: Card(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('GOLDEN BUNDLE',style: TextStyle(color: Color(0Xff181F4D),fontSize: 16,fontWeight: FontWeight.w500),),
                    ),
                    Divider(),
                    Image.asset(img,width: size.width*0.60,height: 100,fit: BoxFit.cover,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('RegulaeWash'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Tire Polishing'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Vacuum Cleaning'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Livingroom Cleaning'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('A/C Vent Steam  Cleaning'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Spray Air Freshener'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){Get.to(Delivery());},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
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

    );
  }
}
class ChoosePlanAfdle extends StatelessWidget {
  final String img;

  const ChoosePlanAfdle({Key key, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KBackGroundColor,
        centerTitle: true,
        elevation: 0,
        title: Text('Choose a car',style: TextStyle(color: Colors.white),),
      ),
      backgroundColor: KBackGroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // height: double.infinity,
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.60,
              child: Card(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('AFDAL KHIAR BUNDLE',style: TextStyle(color: Color(0Xff181F4D),fontSize: 16,fontWeight: FontWeight.w500),),
                    ),
                    Divider(),
                    Image.asset(img,width: size.width*0.60,height: 100,fit: BoxFit.cover,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Tire Polishing'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Vacuum Cleaning'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Livingroom Cleaning'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('A/C Vent Steam  Cleaning'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Spray Air Freshener'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Steam Seat Stain Removal'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Full Car Polishing'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(' Air Freshener (Dukhoon)'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){Get.to(Delivery());},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
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

    );
  }
}
