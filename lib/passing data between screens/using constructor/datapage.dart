import 'package:flutter/material.dart';
import 'package:project_june1/passing%20data%20between%20screens/using%20constructor/to%20stateless_page.dart';
import 'package:project_june1/passing%20data%20between%20screens/using%20constructor/to_stateful_page.dart';

void main(){
  runApp(MaterialApp(home: DataPage(),));
}

class DataPage extends StatelessWidget {
  String name='Luminar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passing Data Between Screens Using Constructor'),
      ),
      body: Container(
        alignment: Alignment.center,
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){

              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=>StatelessPage(
                      name:name,
                      location:'Kakkanad',
                      phone:9564654666)));
            },
                child: Text('To Stateless Page')),
            SizedBox(height: 20,),

            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=>StatefulPage(
                    name: name,
                    location: 'Kakkanad',
                    phone:96774675467,
                  )));
            },
                child: Text('To Stateful Page')),
          ],
        ),
      ),
    );
  }
}
