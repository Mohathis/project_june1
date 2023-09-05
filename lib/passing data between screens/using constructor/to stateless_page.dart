import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatelessPage extends StatelessWidget {
  int? phone;
  final String location;
  final String name;

   StatelessPage({Key? key, required this.name, required this.location, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recieved data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name,style: GoogleFonts.aboreto(fontSize: 30,color: Colors.purple),),
            Text(location,style: GoogleFonts.aboreto(fontSize: 20,color: Colors.pinkAccent),),
            Text('$phone',style: GoogleFonts.aboreto(fontSize: 10,color: Colors.deepPurple),),
          ],
        ),
      ),
    );
  }
}
