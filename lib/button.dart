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
        child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              
              image: AssetImage("assets/images/bg2.jpg"),
              fit: BoxFit.cover),

          //gradient: LinearGradient(
          //begin: Alignment.topCenter,
          // colors: [Colors.yellow[600], Colors.orange, Colors.red])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                    "ENTER CITY NAME :  ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01),
            Container(
              
              width: 200,
              child: TextField(
                
                style: TextStyle(color:Colors.white,fontSize: 20),
                decoration: InputDecoration(
                  
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                borderSide: BorderSide(color: Colors.blue, width: 5.0),
            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue, width: 5.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            
                            
                          ),
                controller: joinn),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02),
            RaisedButton(
              child: Text("SEARCH",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.5)),
              shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(6.0),
                    
                  ),
              
                  elevation: 15,
                  
              onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Searchh()));
              setState(() {
                abc = joinn.text;
              });
              
            }),
          ]
        ),
      )
      ,),)
    );
  }
}


TextEditingController joinn = TextEditingController();
var abc=joinn.text;
