import 'package:flutter/material.dart';
import 'package:irada_center/core/utils/app_colors.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: Center(
          child: LoadingAnimationWidget.inkDrop(
            color: AppColors.kPrimaryColor,
            size: 120,
          ),
        ),
      ),
    );
  }
}
