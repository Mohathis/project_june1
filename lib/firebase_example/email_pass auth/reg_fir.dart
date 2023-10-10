import 'package:flutter/material.dart';
import 'package:project_june1/firebase_example/email_pass%20auth/firebase_db.dart';
import 'package:project_june1/firebase_example/email_pass%20auth/login_fir.dart';

class Register_fire extends StatefulWidget {
  const Register_fire({Key? key}) : super(key: key);

  @override
  State<Register_fire> createState() => _Register_fireState();
}

class _Register_fireState extends State<Register_fire> {
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
          appBar: AppBar(
            title: Text('Registeration'),
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
                String pass  = password_controller.text.trim();
                FirebaseHelper().register(useremail: email,password: pass).then((result){
                  if (result == null){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login_fire()));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));
                  }
                });
              },
                  child: Text('Register Here'))
            ],
          ),
        );
  }
}
