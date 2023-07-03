import 'package:azka/model/data_api.dart';
import 'package:azka/model/services/api_fetch.dart';
import 'package:azka/views/current.dart';
import 'package:azka/views/informasi.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  WeatherAppClient client = WeatherAppClient(); 
  Weather? data;

  // ini data kota yang ko cari, jadi kalau mau ganti kota ko ganti isi getcurrentweathernya
  // contohnya sini aku pake kota jogja
  @override
  Future<void> getData() async{
    data = await client.getCurrentWeather("Tanjungpinang");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        backgroundColor: Colors.white38,
        elevation: 0.0,
        title: const Text(
          "Aplikasi Cuaca", 
        style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,

      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                currentWeather(
                "${data!.icon}", 
                // sini icon aku masi manual, di data API ada icon tapi beda sama icon flutter, ko bisa pake icon dari apinya
                // pake  flutter_weather_icons: ^3.0.0 taro di pubspec.yaml di bawah dependencies
                "${data!.temp}", 
                "${data!.cityName}"),
                SizedBox(height: 60,),

                const Text(
                  "Information",
                  style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(),
                SizedBox(height: 20,),
                informasi(
                "${data!.wind}", 
                "${data!.humid}", 
                "${data!.pressure}",
                "${data!.feels_like}"),
              ],
            );
          }
          else if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container();
        }
      )
    );
  }
}
