import 'package:algoriza_task1/presentation/resources/color_manager.dart';
import 'package:algoriza_task1/presentation/resources/font_manager.dart';
import 'package:algoriza_task1/presentation/resources/string_manager.dart';
import 'package:algoriza_task1/presentation/resources/style_manager.dart';
import 'package:algoriza_task1/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';

class BasicButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final double height;
  final double width;
  final VoidCallback onClick;
  const BasicButton({
    Key? key,
    required this.text,
    required this.onClick,
    required this.buttonColor,
    required this.textColor,
    this.width = double.infinity,
    this.height = 55,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      child: MaterialButton(
        onPressed: onClick,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Text(
          text,
          style: getSemiBoldStyle(
            color: textColor,
            fontSize: FontSize.s18,
          ),
        ),
      ),
    );
  }
}
