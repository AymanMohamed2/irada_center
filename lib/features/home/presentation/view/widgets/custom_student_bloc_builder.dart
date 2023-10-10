import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:irada_center/features/home/presentation/view/widgets/custom_item_details.dart';
import 'package:irada_center/features/home/presentation/view/widgets/custom_names_bar.dart';
import 'package:irada_center/features/home/presentation/view_model/cubit/get_students_cubit.dart';

class CustomStrudentsBlocBuilder extends StatelessWidget {
  const CustomStrudentsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetStudentsCubit, GetStudentsState>(
      builder: (context, state) {
        if (state is GetStudentsSuccess) {
          if (state.students.filteredResults != 0) {
            return Expanded(
              child: Column(
                children: [
                  const CustomNamesBar(),
                  Expanded(
                    child: ListView.builder(
                        itemCount: state.students.data!.doc!.length,
                        itemBuilder: (context, index) {
                          return CustomItemDetails(
                              doc: state.students.data!.doc![index]);
                        }),
                  ),
                ],
              ),
            );
          } else {
            return SizedBox(
              child: Center(
                child: Text('لا يوجد طلاب حاليه'),
              ),
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

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
