import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkInfo{
  // final Connectivity connectivity;

  NetworkInfo();

  Future<bool> isConnected() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    final result = connectivityResult.first;
    switch (result) {
      case ConnectivityResult.bluetooth:
        return true;
      case ConnectivityResult.wifi:
        return true;
      case ConnectivityResult.ethernet:
        return true;
      case ConnectivityResult.mobile:
        return true;
      case ConnectivityResult.none:
        return false;
      case ConnectivityResult.vpn:
        return true;
      case ConnectivityResult.other:
        return false;
    }
  }
}
