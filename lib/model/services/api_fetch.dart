import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myapp/model/data_api.dart';

class WeatherAppClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=1e7ba1079bfdd225b2d8854080a812a7&units=metric");

    // List<Weather> cities = [];

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body);
  }
}
