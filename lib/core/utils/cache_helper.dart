import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable()
class CacheHelper {
  final SharedPreferences sharedPreferences;

  CacheHelper(
    this.sharedPreferences,
  );

  Future<T?> hiveGetDataById<T>(int id) async {
    var i = await Hive.openBox<T>('user');
    return i.get(id);
  }

  Future<void> hivePutData<T>(T object) async {
    try {
      var i = await Hive.openBox<T>('user');
      await i.put(0, object);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<int> hiveClearData<T>() async {
    try {
      var i = await Hive.openBox<T>('user');
      return await i.clear();
    } catch (e) {
      debugPrint(e.toString());
      return 0;
    }
  }

  Future<void> clearTypeSpecificLocalData<T>() async {
    try {
      var i = await Hive.openBox<T>('user');
      await i.clear();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  dynamic getData({required String key}) {
    return sharedPreferences.get(key);
  }

  Future<bool> removeData({required String key}) {
    return sharedPreferences.remove(key);
  }

  Future<bool> saveData({required String key, required dynamic value}) async {
    if (value != null) {
      if (value is int) return await sharedPreferences.setInt(key, value);
      if (value is double) return await sharedPreferences.setDouble(key, value);
      if (value is bool) return await sharedPreferences.setBool(key, value);
      if (value is List<String>) {
        return await sharedPreferences.setStringList(key, value);
      }
      return await sharedPreferences.setString(key, value);
    }
    return false;
  }
}
