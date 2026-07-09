import '../../domain/entities/home_entity.dart';


class ProductModel extends HomeEntity {

 


  ProductModel({
    required super.id,
    required super.title,
    required super.price,
    required super.image,
  });



  factory ProductModel.fromJson(
      Map<String, dynamic> json,
      ) {

    return ProductModel(

      id: json['id'],

      title: json['title'],

      price: (json['price'] as num).toDouble(),

      image: json['thumbnail'],

    );
  }

}
