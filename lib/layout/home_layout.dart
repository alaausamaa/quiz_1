import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});
 static const String routeName = "Home_Layout";


  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.red,
appBar: AppBar(title: Text("loly")),

    );
  }
}
