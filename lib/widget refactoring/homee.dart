import 'package:flutter/material.dart';
import 'package:project_june1/widget%20refactoring/MyWidget.dart';



void main(){
  runApp(MaterialApp(home: RefraHome(),));
}

class RefraHome extends StatelessWidget {
  var name = ['Banana','Apple','Biriryani','Burger','Mango','Pizza'];

  var image = ['assets/icons/banana.png',
    'assets/icons/apple.png',
    'assets/icons/biriyani.png',
    'assets/icons/burger.png',
    'assets/icons/mango.png',
    'assets/icons/pizza.png'];

  var price = [20,30,140,120,20,150];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview using refactoring'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 6,
          itemBuilder: (context,index){
        return MyWidget(
          myimage: AssetImage(image[index]), name: name[index], price: '${price[index]}',
        );
      }),
    );
  }
}






