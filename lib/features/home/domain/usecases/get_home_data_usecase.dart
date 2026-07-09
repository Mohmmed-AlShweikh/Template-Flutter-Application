



import 'package:flutter_production_template/features/home/data/repository/home_repository.dart';
import 'package:flutter_production_template/features/home/domain/entities/home_entity.dart';

class GetHomeDataUseCase {


final HomeRepository repository;



GetHomeDataUseCase(
 this.repository,
);



Future<List<HomeEntity>> call(){

return repository.getProducts();

}


}