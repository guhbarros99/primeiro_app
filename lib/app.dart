import 'package:flutter/material.dart';
import 'package:primeiro_app/Pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: WidgetStatePropertyAll(
            const Color.fromARGB(137, 250, 250, 250),
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 10, 11, 71),
        ),
      ),
      home: const MyHomePage(title: 'Login'),
    );
  }
}
