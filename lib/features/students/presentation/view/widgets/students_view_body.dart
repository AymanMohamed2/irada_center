import 'package:flutter/material.dart';
import 'package:irada_center/core/functions/custom_navigation.dart';
import 'package:irada_center/core/widgets/custom_app_bar.dart';
import 'package:irada_center/features/students/presentation/view/widgets/custom_student_bloc_builder.dart';

class StudentsViewBody extends StatelessWidget {
  const StudentsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          CustomAppBar(
            widget: IconButton(
                onPressed: () {
                  customPopNavigate(context);
                },
                icon: const Icon(Icons.arrow_forward)),
          ),
          const CustomStrudentsBlocBuilder()
        ],
      ),
    );
  }
}
