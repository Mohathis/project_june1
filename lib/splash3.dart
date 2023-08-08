import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_june1/registration.dart';
import 'package:project_june1/validation.dart';

import 'login.dart';

void main(){
  runApp(MaterialApp(home: splash3(),));
}

class splash3 extends StatefulWidget{ //splash3 is initially immutable
  @override
  State<StatefulWidget> createState() => splash3State();  //creteState() will  create a mutable state for splash3

}

class splash3State extends State<splash3>{

  @override
  void initState() {  //what will happen when the app or page is first launched
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login2()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/icons/ani.png",
        height: 200,
        width: 200,),
      ),
    );
  }
}