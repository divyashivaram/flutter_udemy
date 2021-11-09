import 'package:flutter/material.dart';
import '../services/location.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getWeatherData() async {
    var url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b9e764ded68762c8c5cdb001d73f4d77');
    Response weatherResponse = await (get(url));
    print(weatherResponse.body);
  }

  @override
  Widget build(BuildContext context) {
    getWeatherData();
    return Scaffold();
  }
}
