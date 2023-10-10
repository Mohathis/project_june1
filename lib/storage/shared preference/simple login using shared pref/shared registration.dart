import 'package:flutter/material.dart';
import 'package:project_june1/storage/shared%20preference/simple%20login%20using%20shared%20pref/login2sha.dart';
import 'package:project_june1/storage/shared%20preference/simple%20login%20using%20shared%20pref/shared%20login.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(home: SharedRegistration(),));
}

class SharedRegistration extends StatefulWidget {
  const SharedRegistration({Key? key}) : super(key: key);

  @override
  State<SharedRegistration> createState() => _SharedRegistrationState();
}

class _SharedRegistrationState extends State<SharedRegistration> {

  final name=TextEditingController();
  final uname= TextEditingController();
  final pwd=TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Name',
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: uname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: pwd,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),

              ),
            ),
            ElevatedButton(onPressed: () => storedata(),
                child: Text('Sign in'))

          ],
        ),
      ),
    );
  }

 void storedata() async{

   String personalname= name.text;
   String username=uname.text;
   String password=pwd.text;

   preferences=await SharedPreferences.getInstance();
     preferences.setString('name', personalname);
     preferences.setString('username', username);
     preferences.setString('password', password);

     preferences.setBool('userregistration', true);
     Navigator.push(context, MaterialPageRoute(builder: (context)=>Login2shared()));
   }


 }

