import 'package:flutter/material.dart';
import 'package:edu_manager/core/helpers/extensions.dart';

import '../theming/colors.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pop(),
      child: Icon(
        Icons.arrow_back_ios_new,
        color: ColorsManager.gray,
      ),
    );
  }
}
