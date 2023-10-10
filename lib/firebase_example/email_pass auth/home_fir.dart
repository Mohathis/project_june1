import 'package:flutter/material.dart';
import 'package:project_june1/firebase_example/email_pass%20auth/firebase_db.dart';
import 'package:project_june1/firebase_example/email_pass%20auth/login_fir.dart';

class HomeFire extends StatelessWidget {
  const HomeFire({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          FirebaseHelper().SignOut().then((result) => Navigator.push(context, MaterialPageRoute(builder: (context)=> Login_fire())));
        }, child: Text('Sign Out')),
      ),
    );
  }
}
