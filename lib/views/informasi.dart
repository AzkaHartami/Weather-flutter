import 'package:flutter/material.dart';

TextStyle titleFont =
    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);
TextStyle infoFont =
    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0);

Widget informasi(
  String wind,
  String humid,
  String pressure,
  String feels_like,
) {
  return Card(
    elevation: 2.0,
    margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "INFORMATION",
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Wind",
                    style: titleFont,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Pressure",
                    style: titleFont,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Humidity",
                    style: titleFont,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Feels Like",
                    style: titleFont,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$wind m/s",
                    style: infoFont,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "$pressure hPa",
                    style: infoFont,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "$humid%",
                    style: infoFont,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "$feels_like°",
                    style: infoFont,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
