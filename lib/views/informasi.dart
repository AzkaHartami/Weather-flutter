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
                  "Wind",
                style: titlefont,
                ),
                SizedBox(height: 15,),

                Text(
                  "Preasure",
                  style: titlefont,
                ),
              ],
            ),

             Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  "$wind",
                style: infoFont,
                ),
                SizedBox(height: 15,),

                Text(
                  "$pressure",
                  style: infoFont,
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  "Humid",
                style: titlefont,
                ),
                SizedBox(height: 15,),

                Text(
                  "Feels Like",
                  style: titlefont,
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$humid",
                style: infoFont,
                ),
                SizedBox(height: 15,),

                Text(
                  "$feels_like",
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