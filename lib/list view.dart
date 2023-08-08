
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: Listview1(),));
}

class Listview1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('ListView'),
     ),
     body: ListView(
       children: [
         Center(
             child:Text('Select your food',
             style: GoogleFonts.pacifico(
               fontSize: 30,color: Colors.green, fontWeight: FontWeight.bold),
             ),),


         Card(
        child: ListTile(
         title: Text('Apple'),
         subtitle: Text('\$30,'),
         trailing: Icon(Icons.shopping_cart),
         leading: Image.asset('assets/icons/apple.png'),

         ),
         ),
         Card(
         child:ListTile(
           title: Text('pizza'),
           subtitle: Text('\$50,'),
           trailing: Icon(Icons.shopping_cart),
           leading: Image.asset('assets/icons/pizza.png'),
         ),
         ) ,
         Card(
             child:ListTile(
                title: Text('Burger'),
           subtitle: Text('\$50,'),
           trailing: Icon(Icons.shopping_cart),
               leading: Image.network('https://assets.cntraveller.in/photos/6246f468c579dd6f2d1244b6/3:2/w_2385,h_1590,c_limit/Best%20Burgers%20in%20Mumbai%20_Louis%20Monstercheese%20Burger.jpg'),
                 ) ),
         Card(
           child:ListTile(
             title: Text('biriyani'),
             subtitle: Text('\$120,'),
             trailing: Icon(Icons.shopping_cart,
             color: Colors.teal,),

             leading: CircleAvatar(
               backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPGJ6ebSmX8XVm6ZQULpVjl8Jyd-9ypv9etA&usqp=CAU'),
             )
           ),
         ) ,

       ],
     ),
   );
  }

}