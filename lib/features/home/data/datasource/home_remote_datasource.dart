import 'package:dio/dio.dart';

import '../../../../core/network/dio_client.dart';

import '../models/home_model.dart';



class HomeRemoteDatasource {


  final DioClient dioClient;



  HomeRemoteDatasource(
    this.dioClient,
  );



  Future<HomeModel> getHomeData() async {


    final Response response =
        await dioClient.get(
          "/home",
        );



    return HomeModel.fromJson(

      response.data,

    );


  }


}