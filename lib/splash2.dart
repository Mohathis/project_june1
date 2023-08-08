import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: splash2()));
}

class splash2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///set background color way 1
    //  backgroundColor: Colors.grey,
      body: Container(
        /// set background
         decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.topLeft,
        //         end: Alignment.topRight,
        //         colors: [Colors.blueAccent,Colors.white70,Colors.blueAccent])
        ///set background color way 3 using image
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/images.png'))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(Icons.sailing_outlined,
              // size: 80,
              // color: Colors.purple,
              // ),
              Image.asset('assets/icons/ani.png',
                height: 200,
                width: 200,
              ),
             const Text('My Application',style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),),
            ],
          ),
        ),
      ),
    );
  }

}



