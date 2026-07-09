import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class AppLocalization {
  final Locale locale;

  late Map<String, String> _localizedStrings;

  AppLocalization(this.locale);

  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization)!;
  }

  Future<bool> load() async {
    final jsonString = await rootBundle.loadString(
      "assets/lang/${locale.languageCode}.json",
    );
    final Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedStrings = jsonMap.map(
      (key, value) => MapEntry(key, value.toString()),
    );
    return true;
  }

  String translate(String key) {
    return _localizedStrings[key] ?? key;
  }
}
