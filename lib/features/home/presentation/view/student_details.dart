import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:irada_center/features/home/presentation/view/widgets/student_details_view_body.dart';
import 'package:irada_center/features/home/presentation/view_model/cubit/get_students_cubit.dart';

class StudentDetailsView extends StatefulWidget {
  const StudentDetailsView({super.key});

  @override
  State<StudentDetailsView> createState() => _StudentDetailsViewState();
}

class _StudentDetailsViewState extends State<StudentDetailsView> {
  @override
  void initState() {
    BlocProvider.of<GetStudentsCubit>(context).getStudents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: StudentDetailsViewBody(),
    );
  }
}
