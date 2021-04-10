import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

//For Signout

// FlatButton(
// color: Colors.blueGrey,
// hoverColor: Colors.blueGrey[700],
// highlightColor: Colors.blueGrey[800],
// onPressed: _isProcessing
// ? null
// : () async {
// setState(() {
// _isProcessing = true;
// });
// await signOut().then((result) {
// print(result);
// Navigator.of(context).pushReplacement(
// MaterialPageRoute(
// fullscreenDialog: true,
// builder: (context) => HomePage(),
// ),
// );
// }).catchError((error) {
// print('Sign Out Error: $error');
// });
// setState(() {
// _isProcessing = false;
// });
// },
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(15),
// ),
// child: Padding(
// padding: EdgeInsets.only(
// top: 8.0,
// bottom: 8.0,
// ),
// child: _isProcessing
// ? CircularProgressIndicator()
//     : Text(
// 'Sign out',
// style: TextStyle(
// fontSize: 14,
// color: Colors.white,
// ),
// ),
// ),
// )

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Text("Welcome to HomePage", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0, color: Colors.blue)),
      ),
    );
  }
}
