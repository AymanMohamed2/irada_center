import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:irada_center/features/students/presentation/view/widgets/students_view_body.dart';
import 'package:irada_center/features/students/presentation/view_model/get_students_cubit.dart';

class StudentsView extends StatefulWidget {
  const StudentsView({super.key});

  @override
  State<StudentsView> createState() => _StudentsViewState();
}

class _StudentsViewState extends State<StudentsView> {
  @override
  void initState() {
    BlocProvider.of<GetStudentsCubit>(context).getStudents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: StudentsViewBody(),
    );
  }
}
