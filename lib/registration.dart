import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_june1/validation.dart';

class registration extends StatefulWidget{
  @override
  State<registration> createState() => registrationState();

}

class registrationState extends State<registration>{
  var formkey = GlobalKey<FormState>();
  bool passvisibility1 = true;
  bool passvisibility2 = true;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Form(
        key: formkey,
          child: Column(
            children: [


              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(40))),
                  validator: (uname){
                    if(uname!.isEmpty || !uname.contains('@')){
                      return 'Fields are empty or invalid';
                    }else{
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  obscuringCharacter: '*',
                  obscureText: passvisibility1,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        if(passvisibility1 == true){
                          passvisibility1 = false;
                        }else{
                          passvisibility1 = true;
                        }
                      });
                    },
                        icon: Icon(passvisibility1 == true
                            ? Icons.visibility_off_sharp
                            : Icons.visibility)),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
                       validator: (pass) {
                    password = pass;
                         if (pass!.isEmpty && pass.length < 6) {
                           return 'Fields are empty or length must be >=6';
                         } else {
                           return null;
                         }
                       },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  obscuringCharacter: '*',
                  obscureText: passvisibility2,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          if(passvisibility2 == true){
                            passvisibility2 = false;
                          }else{
                            passvisibility2 = true;
                          }
                        });
                      },
                          icon: Icon(passvisibility2 == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                    hintText: 'Confirm Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
                  validator: (cpass){
                    if (cpass!.isEmpty || cpass != password){
                      return 'Fields are empty or password does not match';
                    }else{
                      return null;
                    }
                  },
                ),
              ),
              ElevatedButton(onPressed: (){
                final valid = formkey.currentState!.validate();
                if(valid){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Login2()));
                }else{
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
              }, child: Text('Register')),

            ],
      )),
    );
  }

}






