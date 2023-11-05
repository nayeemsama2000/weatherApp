import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class InternetProvider extends ChangeNotifier {
  bool _hasInternet = true;
  bool get hasInternet => _hasInternet;

  InternetProvider() {
    checkInternetConnection();
  }

  Future checkInternetConnection() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      _hasInternet = false;
      notifyListeners();
    } else {
      _hasInternet = true;
    }
  }
}