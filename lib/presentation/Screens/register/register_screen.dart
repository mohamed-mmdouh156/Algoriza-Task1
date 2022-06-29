import 'package:algoriza_task1/presentation/resources/color_manager.dart';
import 'package:algoriza_task1/presentation/resources/font_manager.dart';
import 'package:algoriza_task1/presentation/resources/route_manager.dart';
import 'package:algoriza_task1/presentation/resources/string_manager.dart';
import 'package:algoriza_task1/presentation/resources/style_manager.dart';
import 'package:algoriza_task1/presentation/resources/value_manager.dart';
import 'package:algoriza_task1/presentation/widgets/phone_textField.dart';
import 'package:algoriza_task1/presentation/widgets/basic_button.dart';
import 'package:algoriza_task1/presentation/widgets/outline_button.dart';
import 'package:algoriza_task1/presentation/widgets/textField.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    bool isVisiable = false;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              const Image(
                height: AppSize.s120,
                width: double.infinity,
                image: AssetImage(AppStrings.loginImage,),
                fit: BoxFit.fitWidth,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0 , top: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: ColorManager.black,
                  ),
                  child: IconButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: ColorManager.white,
                      ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: AppSize.s26,
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          AppStrings.loginText1,
                          style: getRegularStyle(
                            color: ColorManager.grey,
                            fontSize: FontSize.s14,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: AppSize.s26,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppStrings.register,
                            style: getMediumStyle(
                              color: ColorManager.black,
                              fontSize: FontSize.s36,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'Help',
                            style: getLightStyle(
                              color: ColorManager.primary,
                              fontSize: FontSize.s18,
                            ),
                          ),
                          const SizedBox(
                            width: AppSize.s4,
                          ),
                          Icon(
                            Icons.help,
                            color: ColorManager.primary,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppSize.s26,
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          'Email',
                          style: getMediumStyle(
                            color: ColorManager.darkGrey,
                            fontSize: FontSize.s16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: AppSize.s12,
                      ),
                      InputTextField(
                        textController: emailController,
                        inputType: TextInputType.emailAddress,
                        validator: "Email must not be Empty",
                      ),
                      const SizedBox(
                        height: AppSize.s14,
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          'Phone Number',
                          style: getMediumStyle(
                            color: ColorManager.darkGrey,
                            fontSize: FontSize.s16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: AppSize.s12,
                      ),
                      PhoneTextField(textController: phoneController),
                      const SizedBox(
                        height: AppSize.s14,
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          'Password',
                          style: getMediumStyle(
                            color: ColorManager.darkGrey,
                            fontSize: FontSize.s16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: AppSize.s12,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: getRegularStyle(
                            color: ColorManager.lightGrey,
                            fontSize: FontSize.s16,
                          ),
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed: (){
                              setState((){
                                isVisiable = !isVisiable;
                              });
                            },
                            icon: isVisiable ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                          ),
                        ),
                        controller: passwordController,
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return 'Password must not Empty';
                          }
                          else{
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: AppSize.s22,
                      ),
                      BasicButton(
                        text: AppStrings.register,
                        onClick: (){
                          if(formKey.currentState!.validate())
                            {
                              Navigator.pushNamed(context, RoutesManager.loginRoute);
                            }
                        },
                        buttonColor: ColorManager.primary,
                        textColor: ColorManager.white,
                      ),
                      const SizedBox(
                        height: AppSize.s22,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 1,
                              color: ColorManager.white2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              'Or',
                              style: getRegularStyle(
                                color: ColorManager.grey,
                                fontSize: FontSize.s16,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: ColorManager.white2,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppSize.s22,
                      ),
                      OutLineButton(onClick: (){}),
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
                            onPressed: (){
                              Navigator.pushNamed(context, RoutesManager.loginRoute);
                            },
                            child: Text(
                              AppStrings.signIn,
                              style: getRegularStyle(
                                color: ColorManager.primary,
                                fontSize: FontSize.s16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppSize.s20,
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          AppStrings.registerText1,
                          style: getRegularStyle(
                            color: ColorManager.grey,
                            fontSize: FontSize.s14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
