import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:message_encryption_decryption/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dashboard.dart';



void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  runApp(app());
}

class app extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      title: 'Flutter Web Demo By Dipam Patel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String userId;

  void initState(){
    super.initState();
    checkingLogOutOrNot();
  }

   Future<void> checkingLogOutOrNot() async{
    print("11111111111");
    SharedPreferences preferences = await SharedPreferences.getInstance();
    print("22222222222");
    setState(() {
      userId = preferences.getString('uid');
    });
    print("33333333333");
    print(userId);
    print("444444444444");
  }
  @override
  Widget build(BuildContext context){
    return userId == null ? SignIn():DashBoard(uid: userId,);
  }


  // bool check;
  // String userId;
  // @override
  // void initState()  {
  //   // TODO: implement initState
  //   super.initState();
  //   checkSharedPref();
  // }
  //
  // checkSharedPref() async{
  //   setState(() async{
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     check = prefs.getBool('auth');
  //     userId = prefs.getString('uid');
  //   });
  // }
  //
  // @override
  // Widget build(BuildContext context) {
  //   return check == false ? SignIn() :  DashBoard(uid: userId,);
  // }
}
