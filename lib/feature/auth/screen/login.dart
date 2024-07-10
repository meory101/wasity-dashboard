import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wasity/core/resource/color_manager.dart';
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
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Padding(
              padding: EdgeInsets.all(AppWidthManager.w3Point8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: AppHeightManager.h10,
                  ),
                  AppTextWidget(text: 'login'),
                  AppTextWidget(text: 'Hi,welcome back'),
                  SizedBox(
                    height: AppHeightManager.h4,
                  ),
                  AppTextFormField(
                    hintText: 'email',
                  ),
                  SizedBox(
                    height: AppHeightManager.h2,
                  ),
                  AppTextFormField(hintText: 'password'),
                  SizedBox(
                    height: AppHeightManager.h4,
                  ),
                  MainAppButton(
                    width: AppWidthManager.w30,
                    height: AppHeightManager.h7,
                    color: AppColorManager.red,
                    child: AppTextWidget(text: 'login'),
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
