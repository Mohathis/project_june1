
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SimpleAnimation()));
}

class SimpleAnimation extends StatefulWidget {
  @override
  _SimpleAnimationState createState() => _SimpleAnimationState();
}

class _SimpleAnimationState extends State<SimpleAnimation> with SingleTickerProviderStateMixin {
   Animation<double>? animation;
   AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = Tween<double>(begin: 12.0, end: 100.0).animate(animationController!)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text('Hello All', style: TextStyle(fontSize: animation?.value)),
          ),
          ElevatedButton(onPressed: () {
            incrSize();
          }, child: Text('increase text size')),
        ],
      ),
    );
  }

  void incrSize() {
    animationController!.forward();
  }


}