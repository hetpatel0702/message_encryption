import 'package:flutter/material.dart';

class DecryptMsg extends StatefulWidget {
  @override
  _DecryptMsgState createState() => _DecryptMsgState();
}

class _DecryptMsgState extends State<DecryptMsg> {

  final _msgController = TextEditingController();
  String _msg;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _msg = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02, left: MediaQuery.of(context).size.width*0.1, right:  MediaQuery.of(context).size.width*0.1),
              padding: EdgeInsets.only(bottom: 12.0, left: 12.0, right: 12.0),
              child: TextFormField(
                controller: _msgController,
                decoration: InputDecoration(
                  hintText: "Enter Message...",
                  prefixIcon: Icon(
                    Icons.lock_open,
                    size: 30,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 25),
              height: MediaQuery.of(context).size.height*0.08,
              width: MediaQuery.of(context).size.width*0.5,
              child: MaterialButton(
                  color: Colors.blueGrey,
                  child: Center(child: Text("Decrypt", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 2.0),)),
                  onPressed: (){

                  }
                  ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 25),
              child: Text("Hello !! Hii ! How are U??", style: TextStyle(fontSize: 40.0 ,color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold, letterSpacing: 1.0),),
            )
          ],
        ),
      ),
    );
  }
}
