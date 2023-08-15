import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Stackex(),));
}

class Stackex extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Stack Example'),),
        body: Center(
          child: Stack(
            children : [
              Container(
                height: 230,
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image:NetworkImage('https://images.pexels.com/photos/17614235/pexels-photo-17614235/free-photo-of-red-blossoms-on-tree-in-spring.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                ),
                
              ),),

              Positioned(
                right: 10,
                bottom: 10,
                child: Container(
                  height: 50,
                  width: 50,
                  child: Text('EXP : 23-12-2026',style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
                ),
              ),

              Positioned(
                left: 10,
                top: 10,
                child: Container(
                  height: 50,
                  width: 50,
                  child: Text('Albino',style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
              ), ],
          ),
        ),
      );
  }
}
