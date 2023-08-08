import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridui(),));
}

class Gridui extends StatelessWidget {

  var images=['assets/icons/ani.png',
              'assets/icons/apple.png',
              'assets/icons/banana.png',
              'assets/icons/biriyani.png',
              'assets/icons/burger.png',
              'assets/icons/mango.png'];

  var color=[Colors.blue,Colors.blueGrey,Colors.teal,Colors.red,Colors.purple,Colors.yellow,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
        gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                mainAxisSpacing: 10,
                 crossAxisSpacing: 5),

    itemBuilder: (context,index){
          return Container(
          height: 2,
          decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(60),
           color: color[index],

            //  image: DecorationImage(
            //      image: AssetImage(images[index]))
    ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.ac_unit),
              SizedBox(width: 20,),
              Text('Hello',style: TextStyle(fontSize: 50),),
            ],
          ),
          );

    },
    itemCount: 6,)
      ),);
  }
}
