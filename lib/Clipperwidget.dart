import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main(){
  runApp(MaterialApp(home: ClipperEx(),));
}

class ClipperEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clippers'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            ClipRect(
              child: Container(

                  child: Align(
                      heightFactor: .4,
                      widthFactor: .6,
                      child: Image.network('https://images.unsplash.com/photo-1595760780346-f972eb49709f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'))),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                  child: Image.network('https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipOval(
                child: Image.network('https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
              ),
            ),

            ClipPath(
              clipper: WaveClipperTwo(reverse: true),
              child: Image.network('https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
            ),
          ],
        ),
      ),
    );
  }
}
