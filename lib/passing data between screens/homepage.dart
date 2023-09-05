import 'package:flutter/material.dart';
import 'package:project_june1/passing%20data%20between%20screens/dummy%20data.dart';

import 'details.dart';

void main(){
  runApp(MaterialApp(
    home: ProductHome(),
  routes:{
      'details': (context) => ProductDetails()
  }
  ));
}

class ProductHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Shop Now'),
    ),
      body: ListView(
        children: products.map((productonebyone) => Card(
          child: ListTile(

            leading: Container(
              height: 100,
                width: 100,
                decoration:BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: NetworkImage(productonebyone['image1'])))),
            title: Text(productonebyone['name']),
            subtitle: Text('\$ ${productonebyone['price']}'),
          onTap: (){
              gotoNextPage(context,productonebyone['id']);
          },
          ),
        )).toList(),
      ),
    );
  }

  void gotoNextPage(BuildContext context, productId) {
    Navigator.pushNamed(context, 'details',arguments: productId);
  }
}
