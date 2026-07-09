import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/app.dart';
import 'core/providers/storage_provider.dart';

Future<void> main() async {
  // Initialize Flutter bindings
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // Keep splash screen visible
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // Initialize SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();
  // Remove native splash
  FlutterNativeSplash.remove();
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
      child: const MyApp(),
    ),
  );
}
