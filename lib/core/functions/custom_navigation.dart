import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void customPushNavigate(BuildContext context, {required String routeName}) {
  GoRouter.of(context).push(routeName);
}

void customPopNavigate(
  BuildContext context,
) {
  GoRouter.of(context).pop();
}
