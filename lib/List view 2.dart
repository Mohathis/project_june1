import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: ListView2(),));
}

class ListView2 extends StatelessWidget{
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
        backgroundColor: Colors.teal,
        title: const Text('ListView 2'),
        actions: [
          const Icon(Icons.camera_alt),
          SizedBox(width: 20,),
          Icon(Icons.search),
          SizedBox(width: 10,),
          PopupMenuButton(itemBuilder: (context){
            return[
              PopupMenuItem(child: Text('Settings')),
              PopupMenuItem(child: Text('Broadcast')),
              PopupMenuItem(child: Text('Profile')),
              PopupMenuItem(child: Text('Help')),
            ];
          }
          )
        ],
      ),
      body: ListView(
        children: List.generate(6, (index) => Card(
          child: ListTile(
            title: Text(name[index]),
            subtitle: Text('\$ ${price[index]}'),
            leading: CircleAvatar(
              backgroundImage: AssetImage(image[index]),
            ),
            trailing: const Wrap(
              direction: Axis.vertical,
              children: [
                Text('12:30'),
                SizedBox(width: 10,),
                CircleAvatar(
                  minRadius: 4,
                  maxRadius: 10,
                  backgroundColor: Colors.green,
                  child: Text('2'),)
              ],
            ),
          ),
        )),
      ),
    );
  }

}