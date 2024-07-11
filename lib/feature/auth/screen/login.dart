import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:wasity/core/resource/color_manager.dart';
import 'package:wasity/core/resource/font_manager.dart';
import 'package:wasity/core/resource/image_manager.dart';
import 'package:wasity/core/resource/size_manager.dart';
import 'package:wasity/core/widget/button/main_app_button.dart';
import 'package:wasity/core/widget/form_field/app_form_field.dart';
import 'package:wasity/core/widget/text/app_text_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorManager.ink,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: Padding(
              padding: EdgeInsets.all(AppWidthManager.w3Point8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: AppHeightManager.h10,
                  ),
                  // Align(child: Image.asset(AppImageManager.logo)),
                  AppTextWidget(
                    text: 'Sign in',
                    color: AppColorManager.white,
                    fontSize: FontSizeManager.fs20,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    height: AppHeightManager.h4,
                  ),
                  AppTextWidget(
                    text: 'Hi,welcome back please sign in..!',
                    color: AppColorManager.white,
                    fontSize: FontSizeManager.fs14,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: AppHeightManager.h4,
                  ),
                  const AppTextFormField(

                    hintText: 'email'
                  ),
                  SizedBox(
                    height: AppHeightManager.h2,
                  ),
                  const AppTextFormField(hintText: 'password'),
                  SizedBox(
                    height: AppHeightManager.h4,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: MainAppButton(
                      alignment: Alignment.center,
                      borderRadius: BorderRadius.circular(AppRadiusManager.r10),
                      color: AppColorManager.amber,
                      width: AppWidthManager.w25,
                      height: AppHeightManager.h7,
                      child: AppTextWidget(
                        text: 'login',
                        color: AppColorManager.white,
                        fontSize: FontSizeManager.fs14,
                        fontWeight: FontWeight.w500,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
