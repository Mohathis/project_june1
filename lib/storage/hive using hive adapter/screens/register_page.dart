import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project_june1/storage/hive%20using%20hive%20adapter/database/hivedb.dart';
import 'package:project_june1/storage/hive%20using%20hive%20adapter/models/user_model.dart';
import 'package:email_validator/email_validator.dart';
import 'package:project_june1/storage/hive%20using%20hive%20adapter/screens/login_page.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('userData');
  runApp(MaterialApp(home: RegisterHive(),));
}

class RegisterHive extends StatefulWidget {
  const RegisterHive({Key? key}) : super(key: key);

  @override
  State<RegisterHive> createState() => _RegisterHiveState();
}

class _RegisterHiveState extends State<RegisterHive> {

  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HiveRegister'),
      ),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.all(10),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(
                  hintText: 'Username'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: pass,
              decoration: const InputDecoration(
                  hintText: 'Password'),
            ),
          ),
          ElevatedButton(onPressed: () async{
            final userlist = await HiveDb.instance.getUser();
            validateSignUp(context,userlist);
          },
              child: const Text('Register')),

        ],
      ),
    );

  }

  void validateSignUp(BuildContext context,List<User> userlist) async {
    final uname = email.text.trim();
    final pwd   = pass.text.trim();
    bool userFound = false;
    final validateEmail = EmailValidator.validate(uname);
    if(uname != "" && pwd != ""){
      if (validateEmail == true) {
        await Future.forEach(userlist, (singleUser) {
          if (singleUser.email == uname){
            userFound = true;
          }else{
            userFound = false;
          }
        });
        if (userFound == true){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('User Already Exist !!!')));
        }else{
          final validatePassword =  validatePassWord(context, pwd);
          if(validatePassword == true){
            final user = User(email: uname, password: pwd);
            await HiveDb.instance.addUser(user);
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('User Registration Success')));
          }
        }
      }else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Enter a Valid Email!!!')));
      }
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Field Must Not be Empty!!!')));
    }
  }

  bool validatePassWord(BuildContext context, String pwd) {
    if (pwd.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Password length should be > 6 !!')));
      return false;
    }else{
      return true;
    }
  }

}

