import 'package:flutter/services.dart';

class AppConsts {
  static const String appName = "Mera Ration";
  static const String defaultLangCode = "en";
  static const List<String> allowExt = ["png", "jpg", "jpeg", "pdf"];
  static const fileUploadLimit = 1;

  static String get baseURL => switch (appFlavor) {
        "dev" => "https://mera-ration.rvsolutions.in/onorc",
        "onorcdev" => "https://meraration.nic.in/onorcdev",
        "qa" => "https://mera-ration.rvsolutions.in/onorcqa",
        "uat" => "https://meraration.nic.in/onorcuat",
        "prod" => "https://meraration.nic.in/onorc",
        _ => "",
      };

  static String get dashboardBaseURL => switch (appFlavor) {
        // "dev" => "https://feast.nagaland.gov.in/onorc/v1",
        "dev" => "https://meraration.nic.in/onorc/v1",
        "qa" => "https://mera-ration.rvsolutions.in/onorcqa/v1",
        "uat" => "https://meraration.nic.in/onorcuat/v1",
        "prod" => "https://meraration.nic.in/onorc/v1",
        "onorcdev" => "https://meraration.nic.in/onorcdev/v1",
        _ => "",
      };

  // static const cryptoKey = String.fromEnvironment('cryptoKey', defaultValue: '');
  static const cryptoKey = "nic@impds#dedup05613";
  static const String apiPath = "v1";
  static RegExp urlRegex = RegExp(r'^(http|https)://[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  static RegExp numberRegex = RegExp(r'[0-9]');
  static RegExp nameRegex = RegExp(r'[a-zA-Z\s]');
  static RegExp nameRegex2 = RegExp(r'[a-zA-Z\u0900-\u097F\u0A00-\u0A7F\u0980-\u09FF\u0A80-\u0AFF\u0B00-\u0B7F\u0B80-\u0BFF\u0C00-\u0C7F\u0C80-\u0CFF\u0D00-\u0D7F\u0D80-\u0DFF\u0E00-\u0E7F\u0E80-\u0EFF\u0F00-\u0F7F\s]');
  static RegExp numberRegex2 = RegExp(r'[6-90-9]+');
  static RegExp alphaNumeric = RegExp(r'^[a-zA-Z0-9]+$');
  static RegExp withoutSpecial = RegExp(r'[a-zA-Z0-9\s,\.]');
  static RegExp emailRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  static const Duration splashWaitTime = Duration(seconds: 3);
  static const Duration otpResendTime = Duration(minutes: 1);
  static const Duration snackBarTimeout = Duration(seconds: 3);
  static const Duration connectionTimeout = Duration(seconds: 30);
}
