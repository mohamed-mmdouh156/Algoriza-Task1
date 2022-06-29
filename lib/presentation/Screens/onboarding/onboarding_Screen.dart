import 'package:algoriza_task1/presentation/Screens/onboarding/onboarding_item.dart';
import 'package:algoriza_task1/presentation/resources/color_manager.dart';
import 'package:algoriza_task1/presentation/resources/font_manager.dart';
import 'package:algoriza_task1/presentation/resources/string_manager.dart';
import 'package:algoriza_task1/presentation/resources/style_manager.dart';
import 'package:algoriza_task1/presentation/resources/value_manager.dart';
import 'package:algoriza_task1/presentation/widgets/app_logo.dart';
import 'package:algoriza_task1/presentation/widgets/basic_button.dart';
import 'package:algoriza_task1/presentation/widgets/button2.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final onBoardingController = PageController();
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: AppSize.s30,
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Button2(
                  onClick: (){},
                  buttonColor: ColorManager.lightYellow,
                  text: AppStrings.skip,
                  textColor: ColorManager.black,
                ),
              ),
              const SizedBox(
                height: AppSize.s16,
              ),
              Expanded(
                child: PageView(
                  physics: const BouncingScrollPhysics(),
                  controller: onBoardingController,
                  children: const [
                    OnBoardingItem(
                        image: AppStrings.onBoardingImage1,
                        title: AppStrings.onBoardingTitle1,
                        body: AppStrings.onBoardingBody1,
                    ),
                    OnBoardingItem(
                      image: AppStrings.onBoardingImage2,
                      title: AppStrings.onBoardingTitle2,
                      body: AppStrings.onBoardingBody2,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppSize.s16,
              ),
              Container(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: onBoardingController,
                  count: 2,
                  effect: ExpandingDotsEffect(
                    dotHeight: AppSize.s8,
                    dotWidth: AppSize.s8,
                    expansionFactor: 4,
                    dotColor: ColorManager.teal,
                    spacing: 5.0,
                    activeDotColor: ColorManager.lightOrange,
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.s22,
              ),
              BasicButton(
                text: AppStrings.getStarted,
                buttonColor: ColorManager.teal,
                textColor: ColorManager.white,
                onClick: (){},
              ),
              const SizedBox(
                height: AppSize.s20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.haveNotAccount,
                    style: getRegularStyle(
                      color: ColorManager.black,
                      fontSize: FontSize.s16,
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text(
                    AppStrings.signUp,
                    style: getRegularStyle(
                      color: ColorManager.teal,
                      fontSize: FontSize.s16,
                    ),
                  ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
