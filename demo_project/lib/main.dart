import 'package:demo_project/domain/constants/appthemes.dart';
import 'package:demo_project/domain/constants/cubits/themecubit.dart';
import 'package:demo_project/domain/constants/cubits/themestates.dart';
import 'package:demo_project/repository/screens/onboarding/onboardingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( BlocProvider(
    create: (_)=> ThemeCubit(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeStates>(
  builder: (context, state) {
    return MaterialApp(
      title: 'Chat App',
      theme: state is LightThemeStates ? AppThemes.LightTheme : AppThemes.darkTheme,
      home: Onboardingscreen(),
      debugShowCheckedModeBanner: false,
    );
  },
);
  }
}


