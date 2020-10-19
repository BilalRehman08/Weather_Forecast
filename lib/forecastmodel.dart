
import 'dart:ffi';

class Forecast {
  final DateTime date1;
  final String name1;
  final double temp1;
  final String main1;
  final String icon1;

  final DateTime date2;
  final String name2;
  final double temp2;
  final String main2;
  final String icon2;

  final DateTime date3;
  final String name3;
  final double temp3;
  final String main3;
  final String icon3;

  final DateTime date4;
  final String name4;
  final double temp4;
  final String main4;
  final String icon4;

  final DateTime date5;
  final String name5;
  final double temp5;
  final String main5;
  final String icon5;

  Forecast({this.date1, this.name1, this.temp1, this.main1, this.icon1,
  this.date2, this.name2, this.temp2, this.main2, this.icon2,
  this.date3, this.name3, this.temp3, this.main3, this.icon3,
  this.date4, this.name4, this.temp4, this.main4, this.icon4,
  this.date5, this.name5, this.temp5, this.main5, this.icon5,
  });

  factory Forecast.fromJson(Map<String, dynamic> json) {
    return Forecast(
      date1:
          DateTime.fromMillisecondsSinceEpoch(json['list'][0]['dt'] * 1000, isUtc: false),
      name1: json['city']['name'],
      temp1: double.parse(((json['list'][0]['main']['temp'].toDouble())-273.15).toStringAsFixed(2)),
      main1: json['list'][0]['weather'][0]['main'],
      icon1: json['list'][0]['weather'][0]['icon'],


       date2:
          DateTime.fromMillisecondsSinceEpoch(json['list'][1]['dt'] * 1000, isUtc: false),
      name2: json['city']['name'],
      temp2: double.parse(((json['list'][1]['main']['temp'].toDouble())-273.15).toStringAsFixed(2)),
      main2: json['list'][1]['weather'][0]['main'],
      icon2: json['list'][1]['weather'][0]['icon'],



       date3:
          DateTime.fromMillisecondsSinceEpoch(json['list'][2]['dt'] * 1000, isUtc: false),
      name3: json['city']['name'],
      temp3: double.parse(((json['list'][2]['main']['temp'].toDouble())-273.15).toStringAsFixed(2)),
      main3: json['list'][2]['weather'][0]['main'],
      icon3: json['list'][2]['weather'][0]['icon'],



       date4:
          DateTime.fromMillisecondsSinceEpoch(json['list'][3]['dt'] * 1000, isUtc: false),
      name4: json['city']['name'],
      temp4:double.parse(((json['list'][3]['main']['temp'].toDouble())-273.15).toStringAsFixed(2)),
      main4: json['list'][3]['weather'][0]['main'],
      icon4: json['list'][4]['weather'][0]['icon'],



       date5:
          DateTime.fromMillisecondsSinceEpoch(json['list'][4]['dt'] * 1000, isUtc: false),
      name5: json['city']['name'],
      temp5: double.parse(((json['list'][4]['main']['temp'].toDouble())-273.15).toStringAsFixed(2)),
      main5: json['list'][4]['weather'][0]['main'],
      icon5: json['list'][4]['weather'][0]['icon'],
    );
  }
}
