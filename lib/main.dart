import 'package:myapp/model/data_api.dart';
import 'package:myapp/model/services/api_fetch.dart';
import 'package:myapp/views/current.dart';
import 'package:myapp/views/informasi.dart';
import 'package:flutter/material.dart';
import 'package:myapp/views/topfive.dart';

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
  Weather? data1;
  Weather? data2;
  Weather? data3;
  TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    getData("Cimahi");
    getData1("jakarta");
    getData2("Tanjungpinang");
    getData3("Tanjungpinang");
  }

  Future<void> getData(String cityName) async {
    data = await client.getCurrentWeather(cityName);
    setState(() {});
  }

  Future<void> getData1(String cityName) async {
    data1 = await client.getCurrentWeather(cityName);
    setState(() {});
  }

  Future<void> getData2(String temp) async {
    data2 = await client.getCurrentWeather(temp);
    setState(() {});
  }

  Future<void> getData3(String icon) async {
    data3 = await client.getCurrentWeather(icon);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          "SkyView",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/cloud.png'),
              fit: BoxFit.cover,
            ),
          ),
          // height: 530,
          // width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(16.0),
              Container(
                width: 400,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255,
                      255), // Ubah warna latar belakang sesuai keinginan Anda
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2), // Ubah offset sesuai keinginan Anda
                    ),
                  ],
                ),
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    // prefixIcon: Icon(Icons.search),
                    border: InputBorder.none, // Menghilangkan border bawaan
                    suffixIcon: IconButton(
                      onPressed: () {
                        getData(searchController.text);
                      },
                      icon: Icon(Icons.search),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  ),
                ),
              ),
              // ),
              if (data != null)
                Column(
                  children: [
                    currentWeather(
                      "${data!.icon}",
                      "${data!.temp}",
                      "${data!.cityName}",
                      "${data!.wind}",
                      "${data!.description}",
                      "${data!.max}",
                      "${data!.min}",
                    ),
                    topFive(
                      "${data1!.cityName}",
                      "${data2!.temp}",
                      "${data3!.icon}",
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
        ),
      ),
    );
  }
}
