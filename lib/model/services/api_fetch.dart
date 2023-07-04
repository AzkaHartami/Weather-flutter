import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myapp/model/data_api.dart';

class WeatherAppClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=d71800fbb1ccca2e28180ee92a9cdd25&units=metric");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body);
  }
}
