import 'package:flutter/material.dart';
import 'package:weather_app/search.dart';


class Buttonn extends StatefulWidget {
  @override
  _ButtonnState createState() => _ButtonnState();
}


class _ButtonnState extends State<Buttonn> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              child: TextField(
                controller: joinn),
            ),
            SizedBox(height: 30),
            RaisedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Searchh()));
            }),
          ]
        ),
      )
      ,),
    );
  }
}


TextEditingController joinn = TextEditingController();
var abc=joinn.text;
