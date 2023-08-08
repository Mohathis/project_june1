import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ListView_Separated(),));
}

class ListView_Separated extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Separated'),
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return const Icon(Icons.ac_unit_outlined,
        color: Colors.blue,
            size: 20);

      }, separatorBuilder: (context,index){
        if(index % 3 == 0){
          return const Card(
            color: Colors.red,
            child: Text('Advertisement'),
          );
        }else{
          return const SizedBox();
        }
      }, itemCount: 30),
    );
  }

}