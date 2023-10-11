import 'package:flutter/material.dart';
import 'package:irada_center/features/students/data/models/students_model/students_model/students_model.dart';
import 'package:irada_center/features/students/presentation/view/widgets/custom_names_bar.dart';
import 'package:irada_center/features/students/presentation/view/widgets/custom_students_item_.dart';

class CustomStudentsListView extends StatelessWidget {
  const CustomStudentsListView({
    super.key,
    required this.students,
  });
  final StudentsModel students;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const CustomNamesBar(),
          Expanded(
            child: ListView.builder(
                itemCount: students.data!.doc!.length,
                itemBuilder: (context, index) {
                  return CustomStudentsItem(
                    doc: students.data!.doc![index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
