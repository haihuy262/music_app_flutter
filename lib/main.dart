import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/presentation/screens/main_bottom_nav/bloc/bottom_nav_bloc.dart';
import 'package:music_app/presentation/screens/main_bottom_nav/main_navigation.dart';
import 'package:music_app/styles/app_colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavBloc(),
      child: ScreenUtilInit(
        designSize: ScreenUtil.defaultSize,
        splitScreenMode: true,
        minTextAdapt: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.background,
            brightness: Brightness.dark,
          ),
          home: const MainNavigation(),
        ),
      ),
    );
  }
}
