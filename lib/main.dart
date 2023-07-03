import 'package:azka/model/data_api.dart';
import 'package:azka/model/services/api_fetch.dart';
import 'package:azka/views/current.dart';
import 'package:azka/views/informasi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherAppClient client = WeatherAppClient();
  Weather? data;
  TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
  void initState() {
  super.initState();
  getData("Cimahi");
}

  Future<void> getData(String cityName) async {
    data = await client.getCurrentWeather(cityName);
    setState(() {});
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Masukkan nama kota',
                suffixIcon: IconButton(
                  onPressed: () {
                    getData(searchController.text);
                  },
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
          ),
          if (data != null)
            Column(
              children: [
                currentWeather(
                  "${data!.icon}",
                  "${data!.temp}",
                  "${data!.cityName}",
                ),
                const SizedBox(height: 60),
                const Text(
                  "Informasi",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(),
                SizedBox(height: 20),
                informasi(
                  "${data!.wind}",
                  "${data!.humid}",
                  "${data!.pressure}",
                  "${data!.feels_like}",
                ),
              ],
            ),
        ],
      ),
    );
  }
}
