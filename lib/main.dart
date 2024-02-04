import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wytale_seller/views/auth_screen/login_screen.dart';



import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wytale',
      theme: ThemeData (appBarTheme: const AppBarTheme(backgroundColor:Colors.transparent)),
// AppBarTheme
// ThemeData
      home: const LoginPage(),
    );
  }
}