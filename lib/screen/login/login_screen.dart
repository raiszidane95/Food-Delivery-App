// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_task/screens/home/home_screen.dart';
import 'package:login_task/widget/cta_button_widget.dart';

import '../drawer/shrink_drawer_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  'Email Address',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontFamily: 'SF Pro',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 41,
                child: TextFormField(
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  cursorHeight: 24,
                ),
              ),
              SizedBox(
                height: 46,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontFamily: 'SF Pro',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 41,
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  cursorHeight: 24,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(vertical: 15),
                child: InkWell(
                  onTap: () {
                    print('Text Clicked');
                  },
                  child: Text(
                    'Forgot Passcode?',
                    style: TextStyle(
                        color: Color(0xfffa4a0c),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SF Pro'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 51),
                child: Ctabutton(
                  textTitle: 'Login',
                  navigationDestination: MyHomePage(title: 'Food Delivery App'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
