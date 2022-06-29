import 'package:algoriza_task1/presentation/resources/route_manager.dart';
import 'package:algoriza_task1/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {

  MyApp._internal();
  static final MyApp _instance = MyApp._internal(); // singleton or single instance
  factory MyApp () => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesGenerator.getRoutes,
      initialRoute: RoutesManager.onBoardingRoute,
      theme: getApplicationTheme(), 
    );
  }
}
