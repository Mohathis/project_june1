import 'package:flutter/material.dart';
import 'package:project_june1/storage/shared%20preference/simple%20login%20using%20shared%20pref/shared%20login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHome extends StatefulWidget {
  const SharedHome({Key? key}) : super(key: key);

  @override
  State<SharedHome> createState() => _SharedHomeState();
}

class _SharedHomeState extends State<SharedHome> {
  late SharedPreferences preferences;
  late String username;

  @override
  void initState() {
   fetchData();
   super.initState();
  }

  void fetchData() async{
    preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString('uname')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Welcome $username'),
            SizedBox(height: 10,),

            ElevatedButton(
                onPressed: (){
              preferences.setBool('newuser', true);
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginSharedState()));
            },
                child: Text('LOGOUT'))
          ],
        ),
      ),
    );
  }
}
