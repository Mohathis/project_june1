import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_june1/passing%20data%20between%20screens/dummy%20data.dart';

class ProductDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments;

    final product = products.firstWhere((element) => element['id']==productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(product['name']),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(product['image1']))),
            ),
            Text(
              product['name'],
              style: TextStyle(fontSize: 40),
            ),
            Text(
              product['description'],
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '${product['price']}',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              '${product['rating']}',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
