import 'package:algoriza_task1/presentation/resources/color_manager.dart';
import 'package:algoriza_task1/presentation/resources/style_manager.dart';
import 'package:algoriza_task1/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '7',
          style: getBoldStyle(color: ColorManager.lightOrange , fontSize: AppSize.s35),
        ),
        Text(
          'Krave',
          style: getMediumStyle(color: ColorManager.teal , fontSize: AppSize.s35),
        ),
      ],
    );
  }
}
