import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/button_nav_bar.dart';
import '../widget/constans.dart';
import 'choosePlan.dart';
class ChoosePakig extends StatefulWidget {
  final String img;

  const ChoosePakig({Key key, this.img,}) : super(key: key);
  @override
  _ChoosePakigState createState() => _ChoosePakigState();
}

class _ChoosePakigState extends State<ChoosePakig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackGroundColor,
      appBar: AppBar(backgroundColor: KBackGroundColor,title: Text('Choose a car',style: TextStyle(color: Colors.white),),elevation: 0,centerTitle: true,),
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
                      onTap: (){Get.to(ChoosePlanNormal(img: widget.img,));},
                      child: Card(
                        color: Color(0xFFF7F8FA),
                        elevation: 0.5,
                        child: Column(children: [
                          Text('NORMAL PACKAGE',style: TextStyle(color: Color(0Xff181F4D),fontSize: 16,fontWeight: FontWeight.w500),),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(widget.img,width: 150,height: 100,),
                              Container(
                                height: 66,
                                width: 105,
                                child: Stack(
                                  children: [
                                    Positioned(
                                        bottom: 0,
                                        child: Text('960',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.blueAccent),)),
                                    Positioned(
                                        top: 0,
                                        right: 0,
                                        child: Text('AED',style: TextStyle(fontSize: 20),)),
                                  ],
                                ),
                              ),
                            ],
                          )

                        ],)
                      ),
                    ),
                    InkWell(
                      onTap: (){Get.to(ChoosePlanGolden(img:
                      widget.img,));},

                      child: Card(
                          color: Color(0xFFF7F8FA),
                          elevation: 0.5,
                          child: Column(children: [
                            Text('GOLDEN BUNDLE',style: TextStyle(color: Color(0Xff181F4D),fontSize: 16,fontWeight: FontWeight.w500),),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(widget.img,width: 150,height: 100,),
                                Container(
                                  height: 66,
                                  width: 105,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          bottom: 0,
                                          child: Text('680',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.blueAccent),)),
                                      Positioned(
                                          top: 0,
                                          right: 0,
                                          child: Text('AED',style: TextStyle(fontSize: 20),)),
                                    ],
                                  ),
                                ),
                              ],
                            )

                          ],)
                      ),
                    ),
                    InkWell(
                      onTap: (){Get.to(ChoosePlanAfdle(img: widget.img,));},

                      child: Card(
                          color: Color(0xFFF7F8FA),
                          elevation: 0.5,
                          child: Column(children: [
                            Text('AFDAL KHIAR BUNDLE',style: TextStyle(color: Color(0Xff181F4D),fontSize: 16,fontWeight: FontWeight.w500),),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(widget.img,width: 150,height: 100,),
                                Container(
                                  height: 66,
                                  width: 105,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          bottom: 0,
                                          child: Text('970',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.blueAccent),)),
                                      Positioned(
                                          top: 0,
                                          right: 0,
                                          child: Text('AED',style: TextStyle(fontSize: 20),)),
                                    ],
                                  ),
                                ),
                              ],
                            )

                          ],)
                        /*ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('NORMAL PACKAGE',style: TextStyle(color: Colors.blueAccent,fontSize: 16),),
                          ),
                          trailing: Text('225',style: TextStyle(fontSize: 9),),
                          subtitle: Image.asset('assets/img/car1.png',width: 120,height: 90,),
                        ),*/
                      ),
                    ),


                  ],
                ),
              ),
              height: MediaQuery.of(context).size.height*0.70,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
          ),
          Spacer(),
          Bottom_nav_Bars,
        ],
      ),
    );
  }
}
