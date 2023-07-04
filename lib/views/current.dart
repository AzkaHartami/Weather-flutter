import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart'; //
import 'package:intl/intl.dart';

Widget currentWeather(String icon, String temp, String cityName, String wind,
    String description, String min, String max) {
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
    weatherIcon =
        WeatherIcons.refresh; // Icon default jika tidak ada ikon yang cocok
  }

  return Container(
    width: 500,
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "$cityName".toUpperCase(),
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  DateFormat().add_MMMMEEEEd().format(DateTime.now()),
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 50),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "$description",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "$temp°C",
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "min: $min°C / max: $max°C",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 50),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          weatherIcon, // Menggunakan variabel weatherIcon sebagai IconData ikon
                          size: 75,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'wind $wind m/s',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   child:
                  // ),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    ),
  );
}
