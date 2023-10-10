import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_june1/firebase_example/email_pass%20auth/firebase_db.dart';

import 'home_fir.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions(
      apiKey: "AIzaSyDyECp0hutoOiKtc2YhYls4cuS-UEdxr54",
      appId: "1:393733216721:android:90e3da8aca799c2e7568f0",
      messagingSenderId: '',
      projectId: "projectfirebase-a044a"));
  User? user = FirebaseAuth.instance.currentUser;
  runApp(MaterialApp(home: user == null ? Login_fire() : HomeFire()));
}

class Login_fire extends StatefulWidget {
  const Login_fire({Key? key}) : super(key: key);

  @override
  State<Login_fire> createState() => _Login_fireState();
}

class _Login_fireState extends State<Login_fire> {
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),hintText: 'Username'
              ),
              controller: username_controller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password'
              ),
              controller: password_controller,
            ),
          ),
          ElevatedButton(onPressed: (){
            String email = username_controller.text.trim();
            String pass = password_controller.text.trim();

            FirebaseHelper().login(email:email, password:pass).then((result) {
              if (result == null){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeFire()));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));
              }
            });
          }, child: Text('Login'))
        ],
      ),
    );
  }
}
