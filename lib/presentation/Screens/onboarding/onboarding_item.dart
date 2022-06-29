import 'package:algoriza_task1/presentation/resources/color_manager.dart';
import 'package:algoriza_task1/presentation/resources/font_manager.dart';
import 'package:algoriza_task1/presentation/resources/style_manager.dart';
import 'package:algoriza_task1/presentation/resources/value_manager.dart';
import 'package:algoriza_task1/presentation/widgets/app_logo.dart';
import 'package:flutter/material.dart';

class OnBoardingItem extends StatelessWidget {
  final String image;
  final String title;
  final String body;

  const OnBoardingItem({
    Key? key,
    required this.image,
    required this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          const AppLogo(),
          const SizedBox(
            height: AppSize.s16,
          ),
          Image(
            image: AssetImage(image),
          ),
          const SizedBox(
            height: AppSize.s16,
          ),
          Text(
            title,
            style: getMediumStyle(
              color: ColorManager.black,
              fontSize: AppSize.s26,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: AppSize.s12,
          ),
          Text(
            body,
            style: getRegularStyle(
              color: ColorManager.grey,
              fontSize: FontSize.s16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
