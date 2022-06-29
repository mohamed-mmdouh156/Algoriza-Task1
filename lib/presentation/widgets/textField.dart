import 'package:algoriza_task1/presentation/resources/color_manager.dart';
import 'package:algoriza_task1/presentation/resources/font_manager.dart';
import 'package:algoriza_task1/presentation/resources/style_manager.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final TextEditingController textController ;
  final String hintText ;
  final TextInputType inputType;
  final String validator;
  
  const InputTextField({
    Key? key,
    required this.textController,
    this.hintText = 'Eg. 812345678',
    required this.inputType,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: getRegularStyle(
          color: ColorManager.lightGrey,
          fontSize: FontSize.s16,
        ),
        border: const OutlineInputBorder(),
      ),
      controller: textController,
      keyboardType: inputType,
      validator: (value){
        if(value!.isEmpty)
          {
            return validator;
          }
        else{
          return null;
        }
      },
    );
  }
}
