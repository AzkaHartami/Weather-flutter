import 'package:flutter/material.dart';

  TextStyle titlefont =const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);

  TextStyle infoFont =const TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0);

Widget informasi(
  String wind, String humid, String pressure, String feels_like){
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  "Angin",
                style: titlefont,
                ),
                SizedBox(height: 15,),

                Text(
                  "Tekanan",
                  style: titlefont,
                ),
              ],
            ),

             Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  "$wind m/s",
                style: infoFont,
                ),
                SizedBox(height: 15,),

                Text(
                  "$pressure hPa",
                  style: infoFont,
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  "Kelembaban",
                style: titlefont,
                ),
                SizedBox(height: 15,),

                Text(
                  "Sensasi Termal",
                  style: titlefont,
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$humid%",
                style: infoFont,
                ),
                SizedBox(height: 15,),

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

        
  );
}