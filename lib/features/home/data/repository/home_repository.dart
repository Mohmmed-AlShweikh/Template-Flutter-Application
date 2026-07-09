



import 'package:flutter_production_template/features/home/data/datasource/home_remote_datasource.dart';
import 'package:flutter_production_template/features/home/domain/entities/home_entity.dart';

class HomeRepository {


final HomeRemoteDatasource datasource;



HomeRepository(
  this.datasource,
);



Future<List<HomeEntity>> getProducts() async {


final models =
await datasource.getProducts();



return models.map(

(e)=> HomeEntity(

id:e.id,

title:e.title,

price:e.price,

image:e.image,

)

).toList();



}



}