import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:irada_center/core/utils/api_services.dart';
import 'package:irada_center/features/home/data/repositories/home_repo_impl.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<Dio>(Dio());

  getIt.registerSingleton<ApiServices>(ApiServices(getIt.get<Dio>()));
  getIt.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(apiServices: getIt.get<ApiServices>()));
}
