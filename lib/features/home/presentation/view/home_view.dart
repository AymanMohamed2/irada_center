import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:irada_center/core/utils/service_locator.dart';
import 'package:irada_center/features/home/data/repositories/home_repo_impl.dart';
import 'package:irada_center/features/home/presentation/view/widgets/home_view_body.dart';
import 'package:irada_center/features/home/presentation/view_model/cubit/get_students_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetStudentsCubit(getIt.get<HomeRepoImpl>()),
      child: const Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}
