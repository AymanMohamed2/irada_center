import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:irada_center/core/utils/api_services.dart';
import 'package:irada_center/features/students/data/repositories/students_repo_impl.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<Dio>(Dio());

  getIt.registerSingleton<ApiServices>(ApiServices(getIt.get<Dio>()));
  getIt.registerSingleton<StudentsRepoImpl>(
      StudentsRepoImpl(apiServices: getIt.get<ApiServices>()));
}
