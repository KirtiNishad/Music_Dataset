import 'package:hive/hive.dart';

import 'app_preferences.dart';

class AppPreferencesIMPL implements AppPreferences {
  // final SharedPreferences _sharedPreferences;
  final Box box;

  AppPreferencesIMPL({required this.box});

  // AppPreferencesIMPL(this._sharedPreferences);

  @override
  bool? getBool(String key) {
    return box.get(key, defaultValue: null);
  }

  @override
  double? getDouble(String key) {
    return box.get(key);
  }

  @override
  int? getInt(String key) {
    return box.get(key, defaultValue: null);
  }

  @override
  String? getString(String key) {
    return box.get(key, defaultValue: null);
  }

  @override
  Future<void> remove(String key) async {
    return await box.delete(key);
  }

  @override
  Future<void> setBool(String key, bool value) async {
    return await box.put(key, value);
  }

  @override
  Future<void> setDouble(String key, double value) async {
    return await box.put(key, value);
  }

  @override
  Future<void> setInt(String key, int value) async {
    return await box.put(key, value);
  }

  @override
  Future<void> setString(String key, String value) async {
    return await box.put(key, value);
  }

  @override
  Future<int> clearAllPreferences() async {
    return await box.clear();
  }
}
