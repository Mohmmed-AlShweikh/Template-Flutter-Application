import '../../domain/entities/home_entity.dart';

import '../datasource/home_remote_datasource.dart';



class HomeRepository {


  final HomeRemoteDatasource datasource;



  HomeRepository(
    this.datasource,
  );



  Future<HomeEntity> getHomeData() async {


    return await datasource.getHomeData();


  }


}