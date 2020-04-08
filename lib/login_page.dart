import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget{
  @override
  _State createState() => new _State();
}

class _State extends State<LoginPage> {

  TextEditingController _code = new TextEditingController();
  TextEditingController _cont = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Login'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: new Container(
          padding: new EdgeInsets.all(16.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.account_circle, size: 55.0,),
                  radius: 40.0,
                ) ,
                SizedBox(height: 20.0,),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: new Row(
                      children: <Widget>[
                        new Text('AIMS Code: '),
                        new Expanded(child: new TextField(controller: _code))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: new Row(
                      children: <Widget>[
                        new Text('Contact: '),
                        new Expanded(child: new TextField(controller: _cont))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                new Text('We will send an SMS with a confirmation code to your contact'),
                SizedBox(height: 80.0),

                new Padding(
                    padding: new EdgeInsets.all(25.0),
                    child: new RaisedButton(onPressed: () => Navigator.pushNamed(context, "/home_page"),
                    child: new Text('Submit'),),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}

/*SizedBox(height: 155.0,),
FlatButton(
onPressed: () {
Navigator.pushNamed(context, "/login_page");
},
child: Icon(Icons.arrow_forward_ios),
)*/