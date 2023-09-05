import 'package:flutter/material.dart';

class AnimatedLoader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyLoaderScreen(),
    );
  }
}

class MyLoaderScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

      ),
      backgroundColor: Colors.transparent,
    );
  }

}
