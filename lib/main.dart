import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iqra_global_school/screen_views/forgot_password.dart';
import 'package:iqra_global_school/screen_views/home.dart';
import 'package:iqra_global_school/screen_views/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                HomeScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
         child:   ImageIcon(
           AssetImage(
             "assets/icons/logo.jpg",
           ),
         ),

        // )
    );
  }
}