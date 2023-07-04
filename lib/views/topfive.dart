import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

Widget topFive(
  String cityName,
  String temp,
  String icon,
  String wind,
  String cityName1,
  String temp1,
  String icon1,
  String wind1,
  String cityName2,
  String temp2,
  String icon2,
  String wind2,
  String cityName3,
  String temp3,
  String icon3,
  String wind3,
) {
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

  IconData weatherIcon1;
  if (icon1 == '01d') {
    weatherIcon1 = WeatherIcons.day_sunny;
  } else if (icon1 == '01n') {
    weatherIcon1 = WeatherIcons.night_clear;
  } else if (icon1 == '02d') {
    weatherIcon1 = WeatherIcons.day_cloudy;
  } else if (icon1 == '02n') {
    weatherIcon1 = WeatherIcons.night_cloudy;
  } else if (icon1 == '03d' || icon1 == '03n') {
    weatherIcon1 = WeatherIcons.cloud;
  } else if (icon1 == '04d' || icon1 == '04n') {
    weatherIcon1 = WeatherIcons.cloudy;
  } else if (icon1 == '09d' || icon1 == '09n') {
    weatherIcon1 = WeatherIcons.rain;
  } else if (icon1 == '10d' || icon1 == '10n') {
    weatherIcon1 = WeatherIcons.day_rain_mix;
  } else if (icon1 == '11d' || icon1 == '11n') {
    weatherIcon1 = WeatherIcons.thunderstorm;
  } else if (icon1 == '13d' || icon1 == '13n') {
    weatherIcon1 = WeatherIcons.snow;
  } else if (icon1 == '50d' || icon1 == '50n') {
    weatherIcon1 = WeatherIcons.fog;
  } else {
    weatherIcon1 =
        WeatherIcons.refresh; // Icon default jika tidak ada ikon yang cocok
  }

  IconData weatherIcon2;
  if (icon2 == '01d') {
    weatherIcon2 = WeatherIcons.day_sunny;
  } else if (icon2 == '01n') {
    weatherIcon2 = WeatherIcons.night_clear;
  } else if (icon2 == '02d') {
    weatherIcon2 = WeatherIcons.day_cloudy;
  } else if (icon2 == '02n') {
    weatherIcon2 = WeatherIcons.night_cloudy;
  } else if (icon2 == '03d' || icon2 == '03n') {
    weatherIcon2 = WeatherIcons.cloud;
  } else if (icon2 == '04d' || icon2 == '04n') {
    weatherIcon2 = WeatherIcons.cloudy;
  } else if (icon2 == '09d' || icon2 == '09n') {
    weatherIcon2 = WeatherIcons.rain;
  } else if (icon2 == '10d' || icon2 == '10n') {
    weatherIcon2 = WeatherIcons.day_rain_mix;
  } else if (icon2 == '11d' || icon2 == '11n') {
    weatherIcon2 = WeatherIcons.thunderstorm;
  } else if (icon2 == '13d' || icon2 == '13n') {
    weatherIcon2 = WeatherIcons.snow;
  } else if (icon2 == '50d' || icon2 == '50n') {
    weatherIcon2 = WeatherIcons.fog;
  } else {
    weatherIcon2 =
        WeatherIcons.refresh; // Icon default jika tidak ada ikon yang cocok
  }

  IconData weatherIcon3;
  if (icon3 == '01d') {
    weatherIcon3 = WeatherIcons.day_sunny;
  } else if (icon3 == '01n') {
    weatherIcon3 = WeatherIcons.night_clear;
  } else if (icon3 == '02d') {
    weatherIcon3 = WeatherIcons.day_cloudy;
  } else if (icon3 == '02n') {
    weatherIcon3 = WeatherIcons.night_cloudy;
  } else if (icon3 == '03d' || icon3 == '03n') {
    weatherIcon3 = WeatherIcons.cloud;
  } else if (icon3 == '04d' || icon3 == '04n') {
    weatherIcon3 = WeatherIcons.cloudy;
  } else if (icon3 == '09d' || icon3 == '09n') {
    weatherIcon3 = WeatherIcons.rain;
  } else if (icon3 == '10d' || icon3 == '10n') {
    weatherIcon3 = WeatherIcons.day_rain_mix;
  } else if (icon3 == '11d' || icon3 == '11n') {
    weatherIcon3 = WeatherIcons.thunderstorm;
  } else if (icon3 == '13d' || icon3 == '13n') {
    weatherIcon3 = WeatherIcons.snow;
  } else if (icon3 == '50d' || icon3 == '50n') {
    weatherIcon3 = WeatherIcons.fog;
  } else {
    weatherIcon3 =
        WeatherIcons.refresh; // Icon default jika tidak ada ikon yang cocok
  }

  return Container(
    height: 155, // Ukuran tinggi container
    child: Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Expanded(
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
                    SizedBox(height: 10),
                    Text(
                      'wind $wind m/s',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
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
                      "$cityName1".toUpperCase(),
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "$temp1°C",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Icon(
                      weatherIcon1,
                      size: 35,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'wind $wind1 m/s',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
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
                      "$cityName2".toUpperCase(),
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "$temp2°C",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Icon(
                      weatherIcon2,
                      size: 35,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'wind $wind2 m/s',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
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
                      "$cityName3".toUpperCase(),
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "$temp3°C",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Icon(
                      weatherIcon3,
                      size: 35,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'wind $wind3 m/s',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
