import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

Widget topFive(String cityName, String temp, String icon  ) {
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
    height: 150, // Ukuran tinggi container
    // width: 100,
    child: Padding(
      padding: EdgeInsets.all(10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            width: 150, // Ukuran lebar card
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
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "$temp°C",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Icon(
                      weatherIcon,
                      size: 35,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    ),
  );
}
