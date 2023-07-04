class Weather {
  String? cityName;
  double? temp;
  double? wind;
  int? humid;
  double? feels_like;
  int? pressure;
  String? icon;
  String? description;
  double? min;
  double? max;

  Weather(
      {this.cityName,
      this.temp,
      this.wind,
      this.humid,
      this.feels_like,
      this.pressure,
      this.icon,
      this.description,
      this.max,
      this.min});

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    pressure = json["main"]["pressure"];
    humid = json["main"]["humidity"];
    feels_like = json["main"]["feels_like"];
    icon = json["weather"][0]["icon"];
    description = json["weather"][0]["description"];
    min = json["main"]["temp_min"];
    max = json["main"]["temp_max"];
  }
}
