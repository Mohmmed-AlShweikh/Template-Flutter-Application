import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import '../../features/home/presentation/pages/home_page.dart';



class AppRouter {


  static final GoRouter router = GoRouter(

    initialLocation: Routes.home,


    routes: [

      GoRoute(

        path: Routes.home,


        name: Routes.homeName,


        builder: (
          context,
          state,
        ) {

          return const HomePage();

        },

      ),


    ],


    errorBuilder: (
      context,
      state,
    ) {


      return Scaffold(

        body: Center(

          child: Text(
            state.error.toString(),
          ),

        ),

      );

    },

  );


}



class Routes {


  static const String home = "/";


  static const String homeName = "home";

}