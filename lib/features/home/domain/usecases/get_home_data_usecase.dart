import '../entities/home_entity.dart';
import '../../data/repository/home_repository.dart';



class GetHomeDataUseCase {


  final HomeRepository repository;



  GetHomeDataUseCase(
    this.repository,
  );



  Future<HomeEntity> call() async {

    return await repository.getHomeData();

  }


}