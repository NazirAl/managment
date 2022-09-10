import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:managment/constants/colors/app_colors.dart';
import 'package:managment/widgets/button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  text: 'Назира',
                  style: TextStyle(
                    color: AppColor.mainColor,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                        text: '\nАдамга эң кыйыны күн сайын адам болуу',
                        style: TextStyle(
                          color: AppColor.smallTextColor,
                          fontSize: 14,
                        ),
                        children: []),
                  ]),
            ),
            ButtonWidget(
              backgroundcolor: AppColor.mainColor,
              text: 'Макал кошуу',
              textColor: AppColor.smallTextColor,
            )
          ],
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/welcome.jpg'),
          ),
        ),
      ),
    );
  }
}
