import 'package:shared_preferences/shared_preferences.dart';



class SharedPreferencesService {


  final SharedPreferences preferences;



  SharedPreferencesService(
    this.preferences,
  );



  Future<void> saveString(
      String key,
      String value,
      ) async {

    await preferences.setString(
      key,
      value,
    );

  }



  String? getString(
      String key,
      ) {

    return preferences.getString(key);

  }



  Future<void> saveBool(
      String key,
      bool value,
      ) async {

    await preferences.setBool(
      key,
      value,
    );

  }



  bool? getBool(
      String key,
      ) {

    return preferences.getBool(key);

  }



  Future<void> remove(
      String key,
      ) async {

    await preferences.remove(key);

  }



}