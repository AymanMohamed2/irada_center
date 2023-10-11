import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:irada_center/core/utils/service_locator.dart';
import 'package:irada_center/features/home/presentation/view/home_view.dart';
import 'package:irada_center/features/students/data/repositories/students_repo_impl.dart';
import 'package:irada_center/features/students/presentation/view/students_view.dart';
import 'package:irada_center/features/students/presentation/view_model/get_students_cubit.dart';

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
          create: (context) => GetStudentsCubit(getIt.get<StudentsRepoImpl>()),
          child: const StudentsView(),
        ),
      )
    ],
  );
}
