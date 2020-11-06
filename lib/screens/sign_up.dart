import 'package:afdal_khiar_car/screens/login.dart';
import 'package:afdal_khiar_car/widget/constans.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: KBackGroundColor,
        body: ListView(
          scrollDirection: Axis.vertical,
       //   crossAxisAlignment: CrossAxisAlignment.start,
         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 15,),
            Container(
              height: size.height*0.18,
              width: double.infinity,
              child: Center(child: Image.asset('assets/img/logo-top.png'),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              child: Text('Create your account',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              child: RichText(
                text: TextSpan(
                  text: 'Do you already have account ?',
                  style:  TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(text: 'Sign In', style: TextStyle(fontWeight: FontWeight.w400,color: Colors.yellowAccent,fontSize: 16),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(Login());
                            print('Login');
                          }
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Username',style: TextStyle(color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Product Experience',
                    contentPadding: EdgeInsets.only(left: 10,top: 8),
                  ),
                ),
                height:60,
                decoration: BoxDecoration(
                    color:  Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('E-mail or phone',style: TextStyle(color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'productexperience@gmail.com',
                    contentPadding: EdgeInsets.only(left: 10,top: 8),
                  ),
                ),
                height:60,
                decoration: BoxDecoration(
                    color:  Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Password',style: TextStyle(color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '*************',
                    contentPadding: EdgeInsets.only(left: 10,top: 10),
                  ),
                ),
                height:60,
                decoration: BoxDecoration(
                    color:  Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))

                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(Home());
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 8),
                child: Container(
                  child: Center(child: Text('Create account'),),
                  height:60,
                  decoration: BoxDecoration(
                      color:  Color(0xFFFAF205),
                      borderRadius: BorderRadius.all(Radius.circular(15))

                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
