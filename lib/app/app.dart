import 'package:flutter/material.dart';
import 'package:flutter_production_template/app/localization/locale_provider.dart';
import 'package:flutter_production_template/app/theme/theme_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'router/app_router.dart';
import 'theme/app_theme.dart';


class MyApp extends ConsumerWidget {

  const MyApp({
    super.key,
  });


  @override
  Widget build(BuildContext context, WidgetRef ref) {


    return ScreenUtilInit(

      // Base design size
      designSize: const Size(
        375,
        812,
      ),


      minTextAdapt: true,

      splitScreenMode: true,


      builder: (
        context,
        child,
      ) {


        return MaterialApp.router(

          debugShowCheckedModeBanner: false,
           locale:
      ref.watch(localeProvider),


  supportedLocales: const [

    Locale("en"),

    Locale("ar"),

  ],


  theme: AppTheme.lightTheme,


  darkTheme: AppTheme.darkTheme,


  routerConfig: AppRouter.router,

          title: "Flutter Template",


       

          themeMode: ref.watch(themeProvider),


        


          builder: (
            context,
            widget,
          ) {


            return MediaQuery(

              data: MediaQuery.of(context).copyWith(

                // Prevent huge text scaling
                textScaler: const TextScaler.linear(
                  1.0,
                ),

              ),

              child: widget!,
            );
          },

        );

      },

    );
  }
}