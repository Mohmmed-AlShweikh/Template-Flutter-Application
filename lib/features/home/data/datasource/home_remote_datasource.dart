import 'package:dio/dio.dart';

import '../../../../core/network/dio_client.dart';

import '../models/home_model.dart';

class HomeRemoteDatasource {
  final DioClient dioClient;

  HomeRemoteDatasource(this.dioClient);

  Future<List<ProductModel>> getProducts() async {
    final response = await dioClient.get("/products");

    final List products = response.data['products'];

    return products.map((e) => ProductModel.fromJson(e)).toList();
  }
}
