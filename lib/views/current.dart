import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart'; // 

Widget currentWeather(String icon, String temp, String cityName) {
  IconData weatherIcon; 
  if (icon == '01d') {
    weatherIcon = WeatherIcons.day_sunny;
  } else if (icon == '01n') {
    weatherIcon = WeatherIcons.night_clear;
  } else if (icon == '02d') {
    weatherIcon = WeatherIcons.day_cloudy;
  } else if (icon == '02n') {
    weatherIcon = WeatherIcons.night_cloudy;
  } else if (icon == '03d' || icon == '03n') {
    weatherIcon = WeatherIcons.cloud;
  } else if (icon == '04d' || icon == '04n') {
    weatherIcon = WeatherIcons.cloudy;
  } else if (icon == '09d' || icon == '09n') {
    weatherIcon = WeatherIcons.rain;
  } else if (icon == '10d' || icon == '10n') {
    weatherIcon = WeatherIcons.day_rain_mix;
  } else if (icon == '11d' || icon == '11n') {
    weatherIcon = WeatherIcons.thunderstorm;
  } else if (icon == '13d' || icon == '13n') {
    weatherIcon = WeatherIcons.snow;
  } else if (icon == '50d' || icon == '50n') {
    weatherIcon = WeatherIcons.fog;
  } else {
    weatherIcon = WeatherIcons.refresh; // Icon default jika tidak ada ikon yang cocok
  }

  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          weatherIcon, // Menggunakan variabel weatherIcon sebagai IconData ikon
          size: 50,
        ),
        SizedBox(height: 20,),
        Text(
          "$temp°",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "$cityName",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
