import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(home: BottomSheeett(),));
}

class BottomSheeett extends StatelessWidget {
  const BottomSheeett({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom sheet with image on tap'),),
      body: Center(
        child: GestureDetector(
          onDoubleTap:  ()=> showsheet(context),
          child: Image.asset('assets/icons/apple.png'),),
      ),
    );
  }

 void showsheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.teal,),
              title: Text('Whatsapp'),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.facebook,color: Colors.blueAccent,),
              title: Text('Facebook'),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.message,color: Colors.yellow,),
              title: Text('message'),
            ),
          ],
        ),
      );
    });
 }
}
