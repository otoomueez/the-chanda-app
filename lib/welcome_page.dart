import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //backgroundColor: Color(0xFF9E9E9E),

      body: new Container(
            decoration: new BoxDecoration(
              //backgroundBlendMode: BlendMode.overlay,
              image: new DecorationImage(
                  image: new AssetImage('images/snap8.png'),
              fit: BoxFit.fill),color: Colors.black
            ),
      child:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("ASSALAAMUALIKUM", style: TextStyle(
                //fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                //height: 34.0,
                letterSpacing: 1.0,
                fontSize: 22.0,
                color: Color(0xFFE1F5FE)
            ),),
            SizedBox(height: 35.0,),
            Text("WARAHMATULILLAH", style: TextStyle(
              fontStyle: FontStyle.italic,
              //fontWeight: FontWeight.bold,

              letterSpacing: 1.0,
              fontSize: 22.0,
                color: Color(0xFFE1F5FE)
              //  fontFamily: String.fromCharCode(charCode)
            ),),
            SizedBox(height: 35.0,),
            Text("WABARAKATUHU", style: TextStyle(
              fontStyle: FontStyle.italic,
              //fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
              fontSize: 22.0,
                color: Color(0xFFB3E5FC)
            ),),
            SizedBox(height: 55.0,),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/login_page");
                },
                child: Icon(Icons.arrow_forward_ios, color: Color(0xFFB3E5FC)),
              ),
            )
          ],
        ),
      ),

    ),
    );
  }
}