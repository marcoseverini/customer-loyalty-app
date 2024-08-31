import 'package:flutter/material.dart';
import 'package:poc/style/app_theme.dart';

class CalendarioPage extends StatelessWidget {
  const CalendarioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Index 2',
      style: AppTextTheme.title1(color: AppColors.grey7),
    );
  }
}
