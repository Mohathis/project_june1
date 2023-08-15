import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Drawer_Ex(),));
}

class Drawer_Ex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image : DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://cdn.wallpapersafari.com/10/23/1WkpoR.jpg'))
                
              ),
                accountName: Text('Chris Evans'),
                accountEmail: Text('chrisevans@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://cdn.zeebiz.com/sites/default/files/2023/06/13/246845-news18-bl-zb.jpg'),),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundImage: NetworkImage('https://images.mubicdn.net/images/cast_member/3231/cache-282-1628211814/image-w856.jpg?size=800x'),),
              CircleAvatar(
                backgroundImage: NetworkImage('https://static.independent.co.uk/s3fs-public/thumbnails/image/2016/02/28/14/hardy-getty2.jpg'),
              )
            ],),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Info'),
            ),
          ],
        ),
      ),
    );
  }

}