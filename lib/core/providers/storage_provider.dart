import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../storage/shared_preferences_service.dart';



final sharedPreferencesProvider =
    Provider<SharedPreferences>((ref){

      throw UnimplementedError();

    });



final storageProvider =
    Provider<SharedPreferencesService>((ref){

      return SharedPreferencesService(

        ref.watch(
          sharedPreferencesProvider,
        ),

      );

    });