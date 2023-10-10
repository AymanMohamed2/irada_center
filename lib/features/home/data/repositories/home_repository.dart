import 'package:dartz/dartz.dart';
import 'package:irada_center/core/error/failure.dart';
import 'package:irada_center/features/home/data/models/students_model/students_model/students_model.dart';

abstract class HomeRepository {
  Future<Either<Failure, StudentsModel>> getAllStudents();
}
