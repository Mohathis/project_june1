
import 'package:flutter/material.dart';
void main(){
  // runApp attach widget tree to the UI
  runApp(MaterialApp(home: Mysplashpage(),));  //MaterialApp
}

class Mysplashpage extends StatelessWidget {  //this page does not under go any state changes
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: Text('My splash pge'),),);
  }

}