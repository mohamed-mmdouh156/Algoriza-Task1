import 'package:algoriza_task1/presentation/Screens/login/login_screen.dart';
import 'package:algoriza_task1/presentation/Screens/onboarding/onboarding_Screen.dart';
import 'package:algoriza_task1/presentation/Screens/register/register_screen.dart';
import 'package:algoriza_task1/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

class RoutesManager {
  static const String registerRoute = '/register';
  static const String loginRoute = '/login';
  static const String onBoardingRoute = '/onBoarding';
}

class RoutesGenerator {

  static Route<dynamic> getRoutes (RouteSettings settings)
  {
    switch (settings.name)
    {
      case RoutesManager.registerRoute :
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case RoutesManager.loginRoute :
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RoutesManager.onBoardingRoute :
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      default :
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute (){
    return MaterialPageRoute(builder: (_) => Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.undefinedRoute,
        ),
      ),
      body: const Center(
        child: Text(
          AppStrings.undefinedRoute,
        ),
      ),
    ));

  }

}