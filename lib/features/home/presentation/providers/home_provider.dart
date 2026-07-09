import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/providers/dio_provider.dart';
import '../../data/datasource/home_remote_datasource.dart';
import '../../data/repository/home_repository.dart';
import '../../domain/entities/home_entity.dart';
import '../../domain/usecases/get_home_data_usecase.dart';

final homeDatasourceProvider = Provider<HomeRemoteDatasource>((ref) {
  return HomeRemoteDatasource(ref.read(dioProvider));
});

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  return HomeRepository(ref.read(homeDatasourceProvider));
});

final homeProvider = FutureProvider<List<HomeEntity>>((ref) async {
  final useCase = GetHomeDataUseCase(ref.read(homeRepositoryProvider));

  return useCase();
});
