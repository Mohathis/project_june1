import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: carousalslider(),));
}

class carousalslider extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(items: [
        Image.network('https://plus.unsplash.com/premium_photo-1674581220087-d4ee95c5cc3f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
        Image.network('https://plus.unsplash.com/premium_photo-1691787288736-b107c176ef02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60'),
        Image.network('https://images.unsplash.com/photo-1687308115876-bbe40bb95ee6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
        Image.network('https://images.unsplash.com/photo-1691592937500-8b3a8e0b7c52?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0OHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),

      ],options: CarouselOptions(
        initialPage: 0,
        height: 500,
        aspectRatio: 16/9,
        viewportFraction: .5,
        enableInfiniteScroll: true,
        autoPlay: false,
        autoPlayInterval: Duration(seconds: 2),
        autoPlayCurve: Curves.easeInSine,
        enlargeCenterPage: true,
        enlargeFactor: .3,
        scrollDirection: Axis.horizontal,
      ),),
    );
  }
}
