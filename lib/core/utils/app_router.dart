import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:irada_center/core/utils/service_locator.dart';
import 'package:irada_center/features/home/data/repositories/home_repo_impl.dart';
import 'package:irada_center/features/home/presentation/view/home_view.dart';
import 'package:irada_center/features/home/presentation/view/student_details.dart';
import 'package:irada_center/features/home/presentation/view_model/cubit/get_students_cubit.dart';

abstract class AppRouter {
  static String kHomeView = '/';
  static String kStudentsDetailsView = '/students_details_view';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kStudentsDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => GetStudentsCubit(getIt.get<HomeRepoImpl>()),
          child: const StudentDetailsView(),
        ),
      )
    ],
  );
}
