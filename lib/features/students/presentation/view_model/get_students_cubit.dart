import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:irada_center/features/students/data/models/students_model/students_model/students_model.dart';
import 'package:irada_center/features/students/data/repositories/studetns_repo.dart';

part 'get_students_state.dart';

class GetStudentsCubit extends Cubit<GetStudentsState> {
  GetStudentsCubit(this.studentsRepo) : super(GetStudentsInitial());
  final StudentsRepo studentsRepo;
  Future<void> getStudents() async {
    emit(GetStudentsLoading());
    var response = await studentsRepo.getAllStudents();
    response.fold((failure) {
      emit(
        GetStudentsFailure(errMessage: failure.errMessage),
      );
    }, (students) {
      emit(
        GetStudentsSuccess(students: students),
      );
    });
  }
}
