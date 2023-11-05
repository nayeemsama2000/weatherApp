import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/screens/models/weather_response_model.dart';
import 'package:weather_app/services/network_functions.dart';

class HomeProvider extends ChangeNotifier {

  String locationPermission = '';

  String currentCityLong = '';
  String currentCityLat = '';

  String _currentCity = '';
  String? get currentCity => _currentCity;

  String _currentDate = '';
  String? get currentDate => _currentDate;

  String _currentTemp = '';
  String? get currentTemp => _currentTemp;

  WeatherResponseModel? _weatherForecast = WeatherResponseModel();
  WeatherResponseModel? get weatherForecast => _weatherForecast;

  HomeProvider() {
    initialize();
  }

  void initialize() async {
    Future.delayed(Duration(seconds: 3),() async {
      await getLocation();
    },);
  }

  getWeather() async {
    _weatherForecast = await NetworkFunctions().getWeatherApi(lat: currentCityLat,long: currentCityLong);
    if (_weatherForecast != null) {
      _currentDate = _weatherForecast!.location!.localtime!.split(' ').first;
      _currentCity = _weatherForecast!.location!.region!;
      _currentTemp = '${_weatherForecast!.current!.tempC!} °C';
    }
    notifyListeners();
  }

   getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      locationPermission = 'ask';
      notifyListeners();
      return Future.error('Location permissions are denied');
    }

    if (permission == LocationPermission.deniedForever) {
      locationPermission = 'denied forever';
      notifyListeners();
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }

    locationPermission = '';
    Position pos = await Geolocator.getCurrentPosition();
    currentCityLat = pos.latitude.toString();
    currentCityLong = pos.longitude.toString();
    await getWeather();
    notifyListeners();
  }

  getPermission() async {
    var permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.deniedForever) {
      locationPermission = 'denied forever';
      notifyListeners();
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }
    getLocation();
  }

  void getLocationSetting() async {
    await Geolocator.openAppSettings();
    getLocation();
  }
}
