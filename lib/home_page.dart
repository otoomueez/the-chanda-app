import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
     body: Center(child: CircularProgressIndicator(),),
      drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Name Here"),
                accountEmail: Text("email@example.com"),
                currentAccountPicture: CircleAvatar(child:
                Image.asset("images/me.jpg", width: 50.0, height: 50.0),
                radius: 55.0),
                otherAccountsPictures: <Widget>[
                  Image.asset('images/lion.png', height: 25.0),
                  Image.asset('images/chick.jpg')
                ],
              ),
            ],
          )
      ),
      /*
      body: ListBody(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: Image.asset("images/snap4.png"),
            accountName: Text("Name"),
            accountEmail: Text("Email"),
          )
        ],
      ),*/
    );
  }
}

_appBar () {
  return AppBar(
    title: Text("My Profile", style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2.0),),
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.search)
      )
    ],
  );
}