
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/weather_model.dart';
import 'dart:async';
import 'dart:convert';

import 'button.dart';

class Searchh extends StatefulWidget {
  @override
  _SearchhState createState() => _SearchhState();
}

class _SearchhState extends State<Searchh> {


    Future<Weather> searchdata() async {
  

    final searchresponse = await http.get(
        'http://api.openweathermap.org/data/2.5/weather?q=$abc&appid=10530cd042fdda8d65051ca864fc86bf');

      if (searchresponse.statusCode == 200) {
        return Weather.fromJson(jsonDecode(searchresponse.body));
      } else {
        throw Exception('Failed to load Weather');
      }
    }


  @override
  Widget build(BuildContext context) {
    return 
              Container(
                child:FutureBuilder<Weather>(
          future: searchdata(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${snapshot.data.temp} °C",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    snapshot.data.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    snapshot.data.main,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  RaisedButton(
                    child: Text("BACK"),
                    onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Buttonn()));
                    setState(() {
                      joinn.clear();
                      abc = "";
                    });
                  })
                  
                  
                ],
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            return Text(" ");
            
          },
        ),
                
              

              );
            
  }
}



