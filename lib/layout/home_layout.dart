import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_1/pages/screenOne.dart';
import 'package:quiz_1/pages/screentwo.dart';

import '../pages/screenThree.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  static const String routeName = "Home_Layout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectIndex = 0 ;
  List<Widget> pages = [
    ScreenOne(),
    ScreenThree(),
    ScreenTwo() ,
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return  Scaffold(backgroundColor: Colors.white,
          body:pages[selectIndex] ,
          bottomNavigationBar:
      BottomNavigationBar(
        currentIndex: selectIndex,
        onTap: (value) {
          selectIndex = value;
          setState (() {}) ;
        },
        items: [
          BottomNavigationBarItem(icon:ImageIcon(
            AssetImage("assets/images/home.png") , )
              ,label: "" ) ,
          BottomNavigationBarItem(icon:ImageIcon(
              AssetImage("assets/images/Icon.png"))
              , label: ""

          ) ,
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/calendar.png")) , label: "")
        ],
      ),

    );
  }
}
