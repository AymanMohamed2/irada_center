import 'package:flutter/material.dart';
import 'package:irada_center/core/utils/app_colors.dart';
import 'package:irada_center/core/utils/custom_text_style.dart';
import 'package:irada_center/core/utils/fonts_manager.dart';
import 'package:irada_center/features/home/data/models/category_model.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({
    super.key,
    required this.categoryModel,
  });

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: Card(
        child: ListTile(
          trailing: IconButton(
            onPressed: categoryModel.trailingOnTap,
            icon: Icon(categoryModel.trailingIcon),
          ),
          iconColor: AppColors.kPrimaryColor,
          splashColor: AppColors.kPrimaryColor,
          onTap: categoryModel.ontap,
          leading: Icon(
            categoryModel.icon,
            size: 50,
          ),
          title: Text(
            categoryModel.title,
            style: CustomTextStyle.merriweatherSemiBold16
                .copyWith(fontSize: AppFontSize.s20),
          ),
        ),
      ),
    );
  }
}
