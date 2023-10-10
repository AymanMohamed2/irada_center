import 'package:flutter/material.dart';
import 'package:irada_center/core/functions/custom_navigation.dart';
import 'package:irada_center/core/utils/app_router.dart';
import 'package:irada_center/core/utils/app_strings.dart';

class CategoryModel {
  final IconData icon;
  final IconData? trailingIcon;
  final Function()? trailingOnTap;
  final String title;
  final void Function() ontap;

  CategoryModel(
      {required this.ontap,
      required this.icon,
      required this.title,
      this.trailingIcon,
      this.trailingOnTap});

  static List<CategoryModel> getCategoriesList(BuildContext context) {
    List<CategoryModel> categories = [
      CategoryModel(
        trailingOnTap: () {},
        trailingIcon: Icons.person_add,
        ontap: () {
          customPushNavigate(context,
              routeName: AppRouter.kStudentsDetailsView);
        },
        icon: Icons.people,
        title: AppStrings.students,
      ),
      CategoryModel(
        ontap: () {},
        icon: Icons.school,
        title: AppStrings.teachers,
      ),
      CategoryModel(
        ontap: () {},
        icon: Icons.groups,
        title: AppStrings.groups,
      ),
      CategoryModel(
        ontap: () {},
        icon: Icons.check_box,
        title: AppStrings.attendance,
      ),
    ];
    return categories;
  }
}
