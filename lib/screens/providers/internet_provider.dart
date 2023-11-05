import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class InternetProvider extends ChangeNotifier {
  bool _hasInternet = true;
  bool get hasInternet => _hasInternet;

  InternetProvider() {
    checkInternetConnection();
  }

  Future checkInternetConnection() async {
    Connectivity().onConnectivityChanged.listen((event) {
      if(event.name == 'none'){
        _hasInternet = false;
      }else{
        _hasInternet = true;
      }
      notifyListeners();
    });
  }
}