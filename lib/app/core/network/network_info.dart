import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> isConnected();

  Stream<List<ConnectivityResult>> connectivitySubscription();
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectivity;

  NetworkInfoImpl(this.connectivity);

  @override
  Future<bool> isConnected() async {
    final connectivityResult = await connectivity.checkConnectivity();
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

  @override
  Stream<List<ConnectivityResult>> connectivitySubscription() {
    return connectivity.onConnectivityChanged;
  }
}
