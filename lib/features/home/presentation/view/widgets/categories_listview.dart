import 'package:flutter/material.dart';
import 'package:irada_center/features/home/data/models/category_model.dart';
import 'package:irada_center/features/home/presentation/view/widgets/custom_category_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 26 / 5,
          ),
          itemCount: CategoryModel.getCategoriesList(context).length,
          itemBuilder: (context, index) {
            return CustomCategoryItem(
              categoryModel: CategoryModel.getCategoriesList(context)[index],
            );
          }),
    );
  }
}
