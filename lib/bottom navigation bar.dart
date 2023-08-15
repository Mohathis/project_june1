import 'package:flutter/material.dart';
import 'package:project_june1/List%20view%202.dart';
import 'package:project_june1/anim/lottie.dart';
import 'package:project_june1/navdrawer.dart';
import 'package:project_june1/validation.dart';

void main(){
  runApp(MaterialApp(home: BottomNavBar(),));


}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  var screens = [Login2(),LotAnim(),Drawer_Ex(),ListView2()];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Bottom navigation bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.teal,
            selectedItemColor: Colors.blueAccent,
          currentIndex: index,
          onTap: (tappedindex){
            setState((){
              index = tappedindex;
            });

          },
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance_rounded), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded), label: 'Create'),
          ]),
        body: Center(
          child: screens[index],
        ),
    );
  }
}

