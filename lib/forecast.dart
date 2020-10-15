import 'package:flutter/material.dart';
import 'package:weather_app/api.dart';

import 'package:weather_app/weather_model.dart';

class Forect extends StatefulWidget {
  @override
  _ForectState createState() => _ForectState();
}

class _ForectState extends State<Forect> {
  Future<Weather> wea;

  @override
  void initState() {
    super.initState();

    wea = load_data();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<Weather>(
        future: wea,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    cardd("${snapshot.data.temp}", snapshot.data.name,
                        snapshot.data.main, "${snapshot.data.icon}"),
                    cardd("${snapshot.data.temp}", snapshot.data.name,
                        snapshot.data.main, "${snapshot.data.date}"),
                    cardd("${snapshot.data.temp}", snapshot.data.name,
                        snapshot.data.main, "${snapshot.data.date}"),
                    cardd("${snapshot.data.temp}", snapshot.data.name,
                        snapshot.data.main, "${snapshot.data.date}"),
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
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(tem, style: TextStyle(color: Colors.white)),
            Text(c, style: TextStyle(color: Colors.white)),
            Text(m, style: TextStyle(color: Colors.white)),
            Text(d, style: TextStyle(color: Colors.white)),
          ],
        )),
  );
}
