import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:irada_center/core/error/failure.dart';
import 'package:irada_center/core/utils/api_constance.dart';
import 'package:irada_center/core/utils/api_services.dart';
import 'package:irada_center/features/students/data/models/students_model/students_model/students_model.dart';
import 'package:irada_center/features/students/data/repositories/studetns_repo.dart';

class StudentsRepoImpl implements StudentsRepo {
  final ApiServices apiServices;

  StudentsRepoImpl({required this.apiServices});
  @override
  Future<Either<Failure, StudentsModel>> getAllStudents() async {
    try {
      var response =
          await apiServices.get(endPoint: ApiConstance.getStudentsEndPoint);
      print("SUCCESSSSSSSSSSSSSSSSSSSSSS");
      return right(
        StudentsModel.fromJson(response),
      );
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(
          ServerFailure(e.toString()),
        );
      }
    }
  }
}
