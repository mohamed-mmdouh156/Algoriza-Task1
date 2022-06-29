import 'package:algoriza_task1/presentation/resources/color_manager.dart';
import 'package:algoriza_task1/presentation/resources/font_manager.dart';
import 'package:algoriza_task1/presentation/resources/string_manager.dart';
import 'package:algoriza_task1/presentation/resources/style_manager.dart';
import 'package:algoriza_task1/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';



class Button2 extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final VoidCallback onClick;

  const Button2({
    Key? key,
    required this.text,
    required this.onClick,
    required this.buttonColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 45,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(AppSize.s30),
      ),
      child: MaterialButton(
        onPressed: onClick,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Text(
          text,
          style: getRegularStyle(
            color: textColor,
            fontSize: FontSize.s14,
          ),
        ),
      ),
    );
  }
}
