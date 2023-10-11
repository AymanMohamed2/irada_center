import 'package:flutter/material.dart';
import 'package:irada_center/core/utils/app_strings.dart';
import 'package:irada_center/core/utils/custom_text_style.dart';

class CustomNamesBar extends StatelessWidget {
  const CustomNamesBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppStrings.name,
            style: CustomTextStyle.merriweatherSemiBold16,
          ),
          Text(
            AppStrings.age,
            style: CustomTextStyle.merriweatherSemiBold16,
          ),
          Text(
            AppStrings.phoneNumber,
            style: CustomTextStyle.merriweatherSemiBold16,
          ),
          Text(
            AppStrings.id,
            style: CustomTextStyle.merriweatherSemiBold16,
          ),
        ],
      ),
    );
  }
}
