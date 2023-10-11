import 'package:flutter/material.dart';

class CustomEmptyWidget extends StatelessWidget {
  const CustomEmptyWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Text(text),
      ),
    );
  }
}
