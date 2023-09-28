import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoes_ui/theme/app_theme.dart';
import 'package:shoes_ui/views/home/home_screen.dart';
import 'package:sizer/sizer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return GetMaterialApp(
          title: 'Shoes UI',
          theme: AppTheme.theme,
          darkTheme: AppTheme.darkTheme,
          home: const HomeScreen(),
        );
      },
    );
  }
}
