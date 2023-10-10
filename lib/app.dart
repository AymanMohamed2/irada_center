import 'package:flutter/material.dart';
import 'package:irada_center/core/theme/app_theme.dart';
import 'package:irada_center/core/utils/app_router.dart';
import 'package:irada_center/core/utils/app_strings.dart';
import 'package:irada_center/core/utils/size_config.dart';

class IradaCenterApp extends StatelessWidget {
  const IradaCenterApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp.router(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: AppTheme.theme,
    );
  }
}
