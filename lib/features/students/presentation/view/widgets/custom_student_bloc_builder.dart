import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:irada_center/core/utils/app_strings.dart';
import 'package:irada_center/core/widgets/custom_empty_widget.dart';
import 'package:irada_center/core/widgets/custom_loading_indicator.dart';
import 'package:irada_center/features/students/presentation/view/widgets/custom_students_list_view.dart';
import 'package:irada_center/features/students/presentation/view_model/get_students_cubit.dart';

class CustomStrudentsBlocBuilder extends StatelessWidget {
  const CustomStrudentsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetStudentsCubit, GetStudentsState>(
      builder: (context, state) {
        if (state is GetStudentsSuccess) {
          if (state.students.filteredResults != 0) {
            return CustomStudentsListView(
              students: state.students,
            );
          } else {
            return CustomEmptyWidget(
              text: AppStrings.thereAreNoStudents,
            );
          }
        } else if (state is GetStudentsFailure) {
          return Center(
            child: Text(state.errMessage),
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
