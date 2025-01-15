import 'dart:io';
import 'package:data_handling_task1/core/app_strings.dart';
import 'package:data_handling_task1/services/api_service.dart';
import 'package:data_handling_task1/services/shared_pref.dart';
import 'package:data_handling_task1/view/home_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await CacheHelper.init();
  CacheHelper.sharedPreferences?.clear();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.dataHandling,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
