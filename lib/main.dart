import 'package:app/feature/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'feature/auth/register/view/register_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
