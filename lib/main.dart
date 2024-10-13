import 'package:flutter/material.dart';
import 'package:meal_app/views/screens/tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFeeedf2),
        appBarTheme: const AppBarTheme(
          color: Color(0xFFeeedf2),
        ),
      ),
      home: const TabScreen(),
    );
  }
}
