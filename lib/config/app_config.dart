import 'package:flutter_dotenv/flutter_dotenv.dart';



class AppConfig {


  static String get baseUrl =>

      dotenv.env['BASE_URL']
      ?? "";



  static bool get isProduction =>

      dotenv.env['ENV']
      == "production";


}