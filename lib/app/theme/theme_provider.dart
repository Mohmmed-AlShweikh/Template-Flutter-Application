import 'package:flutter/material.dart';
import 'package:flutter_production_template/core/providers/storage_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/storage/shared_preferences_service.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) {
  return ThemeNotifier(ref.read(storageProvider));
});

class ThemeNotifier extends StateNotifier<ThemeMode> {
  final SharedPreferencesService storage;

  static const String key = "theme_mode";

  ThemeNotifier(this.storage) : super(ThemeMode.system) {
    loadTheme();
  }

  Future<void> loadTheme() async {
    final value = storage.getString(key);

    if (value == "dark") {
      state = ThemeMode.dark;
    } else if (value == "light") {
      state = ThemeMode.light;
    }
  }

  Future<void> changeTheme(ThemeMode mode) async {
    state = mode;

    await storage.saveString(key, mode.name);
  }
}
