import 'package:flutter/material.dart';
import 'package:weather_app/api.dart';
import 'package:weather_app/forecastmodel.dart';

import 'package:weather_app/forecastmodel.dart';

class Forect extends StatefulWidget {
  @override
  _ForectState createState() => _ForectState();
}

class _ForectState extends State<Forect> {
  Future<Forecast> ac;

  @override
  void initState() {
    super.initState();

    ac = forc_data() ;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<Forecast>(
        future: ac,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                        cardd("${snapshot.data.date1}","${snapshot.data.temp1}", "${snapshot.data.name1}",
                        "${snapshot.data.main1}" ),
                        cardd("${snapshot.data.date2}","${snapshot.data.temp2}", "${snapshot.data.name2}",
                        "${snapshot.data.main2}"),
                        cardd("${snapshot.data.date3}","${snapshot.data.temp3}", "${snapshot.data.name3}",
                        "${snapshot.data.main3}" ),
                        cardd("${snapshot.data.date4}","${snapshot.data.temp4}", "${snapshot.data.name4}",
                        "${snapshot.data.main4}" ),
                        cardd("${snapshot.data.date5}","${snapshot.data.temp5}", "${snapshot.data.name5}",
                        "${snapshot.data.main5}"),
                  ],
                ),
              ),
            );
        } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          // By default, show a loading spinner.
          return CircularProgressIndicator();
        },
      ),
    );
  }
}

Widget cardd(tem, c, m, d) {
  return Container(
    height: 130,
    width: 120,
    child: Card(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(tem, style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
            SizedBox(height:15),
            Text(c, style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
            Text(m, style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
            Text(d, style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
          ],
        )),
  );
}
