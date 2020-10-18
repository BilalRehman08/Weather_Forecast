import 'package:http/http.dart' as http;
import 'package:weather_app/forecastmodel.dart';
import 'dart:async';
import 'dart:convert';

import 'package:weather_app/weather_model.dart';

Future<Weather> load_data() async {
  

  final weatherResponse = await http.get(
      'http://api.openweathermap.org/data/2.5/weather?q=Karachi&appid=10530cd042fdda8d65051ca864fc86bf');

  if (weatherResponse.statusCode == 200) {
    return Weather.fromJson(jsonDecode(weatherResponse.body));
  } else {
    throw Exception('Failed to load Weather');
  }
}


Future<Forecast> forc_data() async {
  final fResponse = await http.get(
      'http://api.openweathermap.org/data/2.5/forecast?q=Karachi&appid=10530cd042fdda8d65051ca864fc86bf');

  if (fResponse.statusCode == 200) {
    return Forecast.fromJson(jsonDecode(fResponse.body));
  } else {
    throw Exception('Failed to load Forecast');
  }
}
