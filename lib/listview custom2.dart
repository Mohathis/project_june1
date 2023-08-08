import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListView_Custom2(),));
}

class ListView_Custom2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('listview custom'),

      ),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context,
          index) => Text('data'))

          ),
    );
  }

}