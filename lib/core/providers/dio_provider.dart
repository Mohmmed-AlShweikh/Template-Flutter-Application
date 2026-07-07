import 'package:flutter_production_template/core/providers/storage_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../network/dio_client.dart';



final dioProvider =
    Provider<DioClient>((ref){
 final storage = ref.read(storageProvider);
      return DioClient(storage);

    });