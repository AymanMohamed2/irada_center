import 'package:dartz/dartz.dart';
import 'package:irada_center/core/error/failure.dart';
import 'package:irada_center/features/students/data/models/students_model/students_model/students_model.dart';

abstract class StudentsRepo {
  Future<Either<Failure, StudentsModel>> getAllStudents();
}
