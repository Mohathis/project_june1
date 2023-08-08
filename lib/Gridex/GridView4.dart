import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridView4(),));
}

class GridView4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 3,
        children:List.generate(15, (index) => Card(
          child: Center(
            child: Text('Hello'),
          ),
        )) ,),
    );
  }

}