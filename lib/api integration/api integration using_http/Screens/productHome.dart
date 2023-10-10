import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_june1/api%20integration/api%20integration%20using_http/controller/productcontroller.dart';

import 'home/widget/productTile.dart';

void main(){
  runApp(MaterialApp(home: ProductHome(),));
}

class ProductHome extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: SizedBox(child: Obx(() {  //Obx is to make the widget observable
        if(productController.isLoading.value){
          return Center(child: CircularProgressIndicator(),);
        }else{
          return GridView.builder(
            itemCount: productController.productList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return ProductTile(
                    productController.productList[index]);
              });
        }
      }),),
    );
  }
}
