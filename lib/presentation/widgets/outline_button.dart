import 'package:algoriza_task1/presentation/resources/color_manager.dart';
import 'package:algoriza_task1/presentation/resources/font_manager.dart';
import 'package:algoriza_task1/presentation/resources/string_manager.dart';
import 'package:algoriza_task1/presentation/resources/style_manager.dart';
import 'package:algoriza_task1/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';

class OutLineButton extends StatelessWidget {
  final VoidCallback onClick;
  const OutLineButton({
    Key? key,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  OutlinedButton(
      onPressed: (){},
      style:  OutlinedButton.styleFrom(
        side: BorderSide( color: ColorManager.primary),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(AppStrings.googleImage),
              width: 20,
            ),
            const SizedBox(
              width: AppSize.s8,
            ),
            Text(
              'Sign with by google',
              style: getRegularStyle(
                color: ColorManager.primary,
                fontSize: FontSize.s14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
