
import 'package:afdal_khiar_car/functions/localizations.dart';
import 'package:afdal_khiar_car/screens/sign_up.dart';
import 'package:afdal_khiar_car/widget/constans.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
         // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height*0.25,
              width: double.infinity,
              child: Center(child: Image.asset('assets/img/logo-top.png'),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              child: Text(AppLocalizations.of(context).translate('Welcome_to_Login'),style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              child: RichText(
                text: TextSpan(
                  text: 'Please fill E-mail & password to login your app account. ',
                  style:  TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(text: 'Sign Up', style: TextStyle(fontWeight: FontWeight.w400,color: Colors.yellow,fontSize: 16), recognizer: TapGestureRecognizer()
                      ..onTap = () {
                      Get.to(SignUp());
                        print('SignUp');
                      }),
                  ],
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
                    hintText: 'Email',
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
                    hintText: 'Password',
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Checkbox(
                    activeColor: Colors.yellow,
                    checkColor: Colors.black,
                    value: checkedValue,
                    onChanged: (newValue) {
                      setState(() {
                        checkedValue = newValue;
                      });
                    },
                  ),
                  Text('Remember me',style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
            InkWell(
              onTap: (){Get.to(SignUp());},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(child: Text('Login Now'),),
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
