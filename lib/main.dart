import 'package:flutter/material.dart';
import 'package:flutter_application/Views/pages/welcome_page.dart';
import 'package:flutter_application/core/theme.dart';
import 'package:flutter_application/data/value_notifier.dart';
import 'package:flutter_application/routes.dart';

import 'Views/pages/widget_tree.dart';
import 'widgets/navbar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkMode,
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
          home: WelcomePage(),
        );
      },
    );
  }
}
