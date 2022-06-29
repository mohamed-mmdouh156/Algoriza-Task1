import 'package:algoriza_task1/presentation/resources/color_manager.dart';
import 'package:algoriza_task1/presentation/resources/font_manager.dart';
import 'package:algoriza_task1/presentation/resources/style_manager.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneTextField extends StatelessWidget {
  final TextEditingController textController ;
  final String hintText ;
  const PhoneTextField({
    Key? key,
    required this.textController,
    this.hintText = 'Eg. 812345678',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: getRegularStyle(
          color: ColorManager.lightGrey,
          fontSize: FontSize.s16,
        ),
        border: const OutlineInputBorder(),
        prefixIcon: CountryCodePicker(
          onChanged: print,
          initialSelection: 'EG',
          favorite: ['+20','EG'],
          showCountryOnly: false,
          showOnlyCountryWhenClosed: false,
          alignLeft: false,
        ),
      ),
      keyboardType: TextInputType.phone,
      controller: textController,
      validator: (value){
        if(value!.isEmpty){
          return 'Phone must not Empty';
        }
        else{
          return null;
        }
      },
    );
  }
}
