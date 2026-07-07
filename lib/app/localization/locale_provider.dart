import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';



final localeProvider =
    StateNotifierProvider<
        LocaleNotifier,
        Locale
    >(
  (ref) {

    return LocaleNotifier();

  },
);



class LocaleNotifier
    extends StateNotifier<Locale> {


  LocaleNotifier()
      : super(
          const Locale("en"),
        ) {

    loadLocale();

  }



  static const String key =
      "app_language";



  Future<void> changeLanguage(
      String languageCode,
      ) async {


    final prefs =
        await SharedPreferences.getInstance();



    await prefs.setString(
      key,
      languageCode,
    );



    state =
        Locale(languageCode);


  }



  Future<void> loadLocale() async {


    final prefs =
        await SharedPreferences.getInstance();



    final language =
        prefs.getString(key);



    if(language != null){

      state =
          Locale(language);

    }


  }



}