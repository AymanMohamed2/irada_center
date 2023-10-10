import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:irada_center/features/home/data/models/students_model/students_model/students_model.dart';
import 'package:irada_center/features/home/data/repositories/home_repository.dart';

part 'get_students_state.dart';

class GetStudentsCubit extends Cubit<GetStudentsState> {
  GetStudentsCubit(this.homeRepo) : super(GetStudentsInitial());
  final HomeRepository homeRepo;
  Future<void> getStudents() async {
    emit(GetStudentsLoading());
    var response = await homeRepo.getAllStudents();
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
