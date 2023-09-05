import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main(){
  runApp(MaterialApp(home: RiveEx(),));
}

class RiveEx extends StatelessWidget {
  const RiveEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: RiveAnimation.asset('assets/animation/5649-11315-circle-fui.riv',fit: BoxFit.contain,),
      ),
    );
  }
}
