import 'package:flutter/material.dart';
import 'package:irada_center/core/functions/custom_navigation.dart';
import 'package:irada_center/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:irada_center/features/home/presentation/view/widgets/custom_student_bloc_builder.dart';

class StudentDetailsViewBody extends StatelessWidget {
  const StudentDetailsViewBody({super.key});

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
