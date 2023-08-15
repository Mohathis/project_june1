import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_june1/Gridex/stag%20grid.dart';
import 'package:project_june1/listview%20builder.dart';
import 'package:project_june1/stack.dart';
import 'package:project_june1/validation.dart';

void main(){
  runApp(MaterialApp(home: TabEx(),));
}

class TabEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('Whatsapp'),
            actions: [
              Icon(Icons.search),
              Icon(Icons.camera_alt),
              PopupMenuButton(itemBuilder: (context){
                return [
                  PopupMenuItem(child: Text('Settings'))
                ];
              })
            ],
            bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                isScrollable: true,
                labelPadding: EdgeInsets.zero,
                tabs: [
              SizedBox(
                  width: MediaQuery.of(context).size.width *.1,
                  child: FaIcon(FontAwesomeIcons.peopleGroup)),
              SizedBox(
                  width: MediaQuery.of(context).size.width *.3,
                  child: Text('Chat')),
              SizedBox(
                  width: MediaQuery.of(context).size.width *.3,
                  child: Text('Status')),
              SizedBox(
                  width: MediaQuery.of(context).size.width *.3,
                  child: Text('Call')),
            ]),
          ),
          body: TabBarView(
              children: [
                Listview_with_builder(),
                Login2(),
                Stag_Grid(),
                Stackex()
              ]),
        ));

  }
}



// Center(child: Text('Community')),
// Center(child: Text('Chat')),
// Center(child: Text('Status')),
// Center(child: Text('Call')),