import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_june1/Home.dart';
import 'Home.dart';

class LoginPage extends StatelessWidget{

  String uname='admin';
  String pwd='abc123';

  TextEditingController usercontroller= TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LoginPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: usercontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.people),
                  hintText: 'Username',
                  helperText: 'Username must be an email',
                  labelText: 'Username '
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 50),
              child: TextField(
                controller: passcontroller,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.visibility_off_sharp),
                  hintText: 'Password',
                  helperText: 'Password must contain 6 characters',
                  labelText: 'Password'),


                ),
              ),

            ElevatedButton(onPressed: (){
              if(uname==usercontroller.text && pwd==passcontroller.text) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Homepage()));
                usercontroller.text='';
                passcontroller.text='';
              }else{
                // ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(content: Text('Username or password incorrect'),
                // backgroundColor: Colors.red,)
                // );
                Fluttertoast.showToast(
                    msg: "username or password incorrect",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.TOP,
                  //  timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              }
            }, child: const Text('Login'))
          ],
        ),
      ),
    );

  }

}