import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wasity/core/theme/app_theme.dart';
import 'package:wasity/feature/auth/screen/login.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return
        const MaterialApp(
          debugShowCheckedModeBanner: false,
         home: Login(

         ),
        );
    });
  }
}
