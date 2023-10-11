import 'package:flutter/material.dart';
import 'package:irada_center/core/utils/app_size.dart';
import 'package:irada_center/core/utils/app_strings.dart';
import 'package:irada_center/core/utils/custom_text_style.dart';
import 'package:irada_center/features/home/presentation/view/widgets/categories_listview.dart';
import 'package:irada_center/core/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          CustomAppBar(
            widget: Text(
              AppStrings.appName,
              style: CustomTextStyle.merriweatherBold20,
            ),
          ),
          const SizedBox(
            height: AppSize.s10,
          ),
          const CategoriesListView(),
        ],
      ),
    );
  }
}
