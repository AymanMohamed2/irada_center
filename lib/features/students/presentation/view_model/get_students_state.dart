part of 'get_students_cubit.dart';

sealed class GetStudentsState extends Equatable {
  const GetStudentsState();

  @override
  List<Object> get props => [];
}

final class GetStudentsInitial extends GetStudentsState {}

final class GetStudentsLoading extends GetStudentsState {}

final class GetStudentsSuccess extends GetStudentsState {
  final StudentsModel students;

  const GetStudentsSuccess({required this.students});
}

final class GetStudentsFailure extends GetStudentsState {
  final String errMessage;

  const GetStudentsFailure({required this.errMessage});
}
