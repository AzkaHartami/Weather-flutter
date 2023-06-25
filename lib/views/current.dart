
import 'package:flutter/material.dart';

Widget currentWeather(IconData icon, String temp, String location){
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.yellow,
          size: 100,
        ),
        SizedBox(height: 10,),

        Text(
          "$temp",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
        SizedBox(height: 10),

        Text(
          "$location",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black
          ),
        )
      ],
    )
  );
}