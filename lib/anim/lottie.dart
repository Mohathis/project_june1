import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: LotAnim(),));
}

class LotAnim extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Lottie'),
     ),
     body: ListView(
       children: [
         Lottie.asset('assets/animation/x.json'),
         Lottie.network('https://lottie.host/26fbc039-bb13-41c6-80f8-34bfab0aa8cd/fgreBMvow0.json'),
       ],
     ),
   );
  }

}