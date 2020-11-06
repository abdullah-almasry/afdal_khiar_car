import 'package:afdal_khiar_car/widget/constans.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';

class IconStepperDemo extends StatefulWidget {
  @override
  _IconStepperDemo createState() => _IconStepperDemo();
}

class _IconStepperDemo extends State<IconStepperDemo> {
  // MUST BE MAINTAINED, SEPARATELY.
  int currentIndex = 0;

  // THESE MUST BE USED TO CONTROL THE STEPPER FROM EXTERNALLY.
  bool goNext = false;
  bool goPrevious = false;
  int _curr = 0;
  bool isClicked = false;
  bool _value = false;

  PageController controller = PageController();
  /* ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }*/

  /* void scrollCallBack(DragUpdateDetails dragUpdate) {
    setState(() {
      _controller.position.moveTo(dragUpdate.globalPosition.dy * 3.5);
    });
  }*/
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<Widget> _list = <Widget>[
      Container(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'name',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'name',
                      contentPadding: EdgeInsets.only(left: 10, top: 8),
                    ),
                  ),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Last name',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Last name',
                      contentPadding: EdgeInsets.only(left: 10, top: 8),
                    ),
                  ),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'phone',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
                    obscureText: true,
                    // obscuringCharacter: '*',
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '+0123456789',
                      contentPadding: EdgeInsets.only(left: 10, top: 10),
                    ),
                  ),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'email',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      contentPadding: EdgeInsets.only(left: 10, top: 8),
                    ),
                  ),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    controller.jumpToPage(_curr + 1);

                    /*      if (_curr != _list.length - 1)
                    controller.jumpToPage(_curr + 1);
                  else
                    controller.jumpToPage(0);*/
                  });
                  // MUST TO CONTROL STEPPER FROM EXTERNAL BUTTONS.
                  setState(() {
                    goNext = true;
                    goPrevious = false;

                    if (currentIndex < 3) {
                      currentIndex++;
                    }
                  });
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: Container(
                    child: Center(
                      child: Text('Next'),
                    ),
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xFFFAF205),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Street ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                height: 70,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'street amstrong 15',
                            contentPadding: EdgeInsets.only(left: 10, top: 8),
                          ),
                        ),
                        height: 60,
                        width: size.width * 0.70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Image.asset('assets/img/map.png'),
                        height: 60,
                        width: size.width * 0.20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'City',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: DropdownButtonFormField(
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      size: 36,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Sharjah ',
                      contentPadding: EdgeInsets.only(left: 10, bottom: 8),
                    ),
                  ),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'address',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'street 15',
                      contentPadding: EdgeInsets.only(left: 10, top: 8),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        controller.jumpToPage(_curr - 1);

                        /*      if (_curr != _list.length - 1)
                        controller.jumpToPage(_curr + 1);
                      else
                        controller.jumpToPage(0);*/
                      });
                      // MUST TO CONTROL STEPPER FROM EXTERNAL BUTTONS.
                      setState(() {
                        goNext = false;
                        goPrevious = true;

                        if (currentIndex < 3) {
                          currentIndex--;
                        }
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 8),
                      child: Container(
                        child: Center(
                          child: Text('BACK'),
                        ),
                        height: 60,
                        width: size.width * 0.42,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        controller.jumpToPage(_curr + 1);

                        /*      if (_curr != _list.length - 1)
                    controller.jumpToPage(_curr + 1);
                  else
                    controller.jumpToPage(0);*/
                      });
                      // MUST TO CONTROL STEPPER FROM EXTERNAL BUTTONS.
                      setState(() {
                        goNext = true;
                        goPrevious = false;

                        if (currentIndex < 3) {
                          currentIndex++;
                        }
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 8),
                      child: Container(
                        child: Center(
                          child: Text('Next'),
                        ),
                        height: 60,
                        width: size.width * 0.42,
                        decoration: BoxDecoration(
                            color: Color(0xFFFAF205),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Container(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Cash on Delivery'),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _value = !_value;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blueAccent),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: _value
                                    ? Icon(
                                        Icons.check,
                                        size: 14.0,
                                        color: Colors.white,
                                      )
                                    : Icon(
                                        Icons.check_box_outline_blank,
                                        size: 14.0,
                                        color: Colors.blue,
                                      ),
                              ),
                            ),
                          ),
                        ],
                      ) /*TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Cash on Delivery',
                        suffixIcon: Image.asset('assets/img/checkeddanger.png'),
                      ),
                    ),*/
                      ),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/img/visa.png'),
                          Image.asset('assets/img/Bitmap.png'),
                          Text('visa and mastercard'),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _value = !_value;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blueAccent),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: _value
                                    ? Icon(
                                        Icons.check,
                                        size: 14.0,
                                        color: Colors.white,
                                      )
                                    : Icon(
                                        Icons.check_box_outline_blank,
                                        size: 14.0,
                                        color: Colors.blue,
                                      ),
                              ),
                            ),
                          ),
                        ],
                      )),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Name on Card',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
                    obscureText: true,
                    // obscuringCharacter: '*',
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '+street amstrong 15',
                      contentPadding: EdgeInsets.only(left: 10, top: 10),
                    ),
                  ),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Card Number',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        //icon: Image.asset('assets/img/Bitmap.png'),
                        //  counter: Image.asset('assets/img/Bitmap.png'),
                        border: InputBorder.none,
                        hintText: '9586 9594 4943 4595',

                        suffixIcon: Image.asset('assets/img/Bitmap.png'),
                      ),
                    ),
                  ),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 120,
                    width: size.width * 0.47,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Expiry Date',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '09/18',
                                contentPadding:
                                    EdgeInsets.only(left: 10, top: 8),
                              ),
                            ),
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: size.width * 0.47,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'CVV',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: TextFormField(
                              obscureText: true,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '***',
                                contentPadding:
                                    EdgeInsets.only(left: 10, top: 8),
                              ),
                            ),
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        controller.jumpToPage(_curr - 1);

                        /*      if (_curr != _list.length - 1)
                        controller.jumpToPage(_curr + 1);
                      else
                        controller.jumpToPage(0);*/
                      });
                      // MUST TO CONTROL STEPPER FROM EXTERNAL BUTTONS.
                      setState(() {
                        goNext = false;
                        goPrevious = true;

                        if (currentIndex < 3) {
                          currentIndex--;
                        }
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 8),
                      child: Container(
                        child: Center(
                          child: Text('BACK'),
                        ),
                        height: 60,
                        width: size.width * 0.42,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 8),
                      child: Container(
                        child: Center(
                          child: Text('PAY'),
                        ),
                        height: 60,
                        width: size.width * 0.42,
                        decoration: BoxDecoration(
                            color: Color(0xFFFAF205),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ];
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: KBackGroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: KBackGroundColor,
                // borderRadius: BorderRadius.circular(5.0),
              ),
              child: IconStepper.externallyControlled(
                goNext: goNext,
                goPrevious: goPrevious,
                direction: Axis.horizontal,
                stepColor: Colors.white,
                activeStepColor: Colors.amber,
                lineColor: Colors.amberAccent,
                lineLength: 75,
                activeStepBorderPadding: 5,
                activeStepBorderWidth: 5,
                steppingEnabled: true,
                icons: [
                  Icon(Icons.person),
                  Icon(Icons.home),
                  Icon(Icons.payment),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.80,
              child: PageView(
                reverse: false,
                allowImplicitScrolling: false,
                children: _list,
                scrollDirection: Axis.horizontal,
                pageSnapping: true,
                physics: BouncingScrollPhysics(),
                controller: controller,
                onPageChanged: (num) {
                  print("Current page number is " + num.toString());
                  _curr = num;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
